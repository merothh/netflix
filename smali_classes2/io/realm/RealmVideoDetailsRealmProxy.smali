.class public Lio/realm/RealmVideoDetailsRealmProxy;
.super Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;
.source "RealmVideoDetailsRealmProxy.java"

# interfaces
.implements Lio/realm/RealmVideoDetailsRealmProxyInterface;
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
.field private columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

.field private proxyState:Lio/realm/ProxyState;

.field private seasonLabelsRealmList:Lio/realm/RealmList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmList",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "id"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "playable"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "profileId"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "seasonNumber"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "seasonLabels"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "errorType"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "videoType"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "year"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "maturityLevel"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "synopsis"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "quality"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "actors"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "genres"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "cert"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "supplMessage"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "defaultTrailer"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "copyright"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "hResPortBoxArtUrl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "hResLandBoxArtUrl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "boxshotUrl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "boxartImageId"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "horzDispUrl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "horzDispSmallUrl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "storyDispUrl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "tvCardUrl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "storyUrl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "bifUrl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "catalogIdUrl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "titleImgUrl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "titleCroppedImgUrl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "title"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "isOriginal"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "isPreRelease"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "hasWatched"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "hasTrailers"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "isInQueue"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "isVideoHd"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "isVideoUhd"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "isVideo3D"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "isVideo5dot1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "isVideoHdr10"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "isVideoDolbyVision"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "userRating"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "predictedRating"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/realm/RealmVideoDetailsRealmProxy;->FIELD_NAMES:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;-><init>()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    return-void
.end method

.method public static copy(Lio/realm/Realm;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;ZLjava/util/Map;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    :goto_0
    return-object v0

    :cond_0
    const-class v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v0}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v3, v2}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$playable()Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    if-eqz v1, :cond_1

    move-object v2, v0

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$playable(Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;)V

    :goto_1
    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$profileId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$profileId(Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$seasonNumber()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$seasonNumber(I)V

    move-object v1, p1

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$seasonLabels()Lio/realm/RealmList;

    move-result-object v4

    if-eqz v4, :cond_4

    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$seasonLabels()Lio/realm/RealmList;

    move-result-object v5

    move v2, v3

    :goto_2
    invoke-virtual {v4}, Lio/realm/RealmList;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    invoke-virtual {v4, v2}, Lio/realm/RealmList;->get(I)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;

    if-eqz v1, :cond_3

    invoke-virtual {v5, v1}, Lio/realm/RealmList;->add(Lio/realm/RealmModel;)Z

    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_1
    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-static {p0, v2, p2, p3}, Lio/realm/RealmPlayableRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;ZLjava/util/Map;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$playable(Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$playable(Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v2}, Lio/realm/RealmList;->get(I)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;

    invoke-static {p0, v1, p2, p3}, Lio/realm/RealmSeasonRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;ZLjava/util/Map;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;

    move-result-object v1

    invoke-virtual {v5, v1}, Lio/realm/RealmList;->add(Lio/realm/RealmModel;)Z

    goto :goto_3

    :cond_4
    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$errorType()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$errorType(I)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$videoType()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$videoType(I)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$year()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$year(I)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$maturityLevel()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$maturityLevel(I)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$synopsis()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$synopsis(Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$quality()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$quality(Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$actors()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$actors(Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$genres()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$genres(Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$cert()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$cert(Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$supplMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$supplMessage(Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$defaultTrailer()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$defaultTrailer(Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$copyright()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$copyright(Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$hResPortBoxArtUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$hResPortBoxArtUrl(Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$hResLandBoxArtUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$hResLandBoxArtUrl(Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$boxshotUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$boxshotUrl(Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$boxartImageId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$boxartImageId(Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$horzDispUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$horzDispUrl(Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$horzDispSmallUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$horzDispSmallUrl(Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$storyDispUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$storyDispUrl(Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$tvCardUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$tvCardUrl(Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$storyUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$storyUrl(Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$bifUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$bifUrl(Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$catalogIdUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$catalogIdUrl(Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$titleImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$titleImgUrl(Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$titleCroppedImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$titleCroppedImgUrl(Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$isOriginal()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$isOriginal(Z)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$isPreRelease()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$isPreRelease(Z)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$hasWatched()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$hasWatched(Z)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$hasTrailers()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$hasTrailers(Z)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$isInQueue()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$isInQueue(Z)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$isVideoHd()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$isVideoHd(Z)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$isVideoUhd()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$isVideoUhd(Z)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$isVideo3D()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$isVideo3D(Z)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$isVideo5dot1()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$isVideo5dot1(Z)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$isVideoHdr10()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$isVideoHdr10(Z)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$isVideoDolbyVision()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$isVideoDolbyVision(Z)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$userRating()F

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$userRating(F)V

    move-object v1, v0

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    check-cast p1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {p1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$predictedRating()F

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$predictedRating(F)V

    goto/16 :goto_0
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;ZLjava/util/Map;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;"
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

    check-cast v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    move-object p1, v3

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    if-eqz p2, :cond_6

    const-class v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-virtual {p0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v6

    move-object v3, p1

    check-cast v3, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$id()Ljava/lang/String;

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

    const-class v5, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-virtual {v3, v5}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    new-instance v4, Lio/realm/RealmVideoDetailsRealmProxy;

    invoke-direct {v4}, Lio/realm/RealmVideoDetailsRealmProxy;-><init>()V

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

    invoke-static {p0, v4, p1, p3}, Lio/realm/RealmVideoDetailsRealmProxy;->update(Lio/realm/Realm;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;Ljava/util/Map;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

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
    invoke-static {p0, p1, p2, p3}, Lio/realm/RealmVideoDetailsRealmProxy;->copy(Lio/realm/Realm;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;ZLjava/util/Map;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

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

    const-string/jumbo v0, "RealmVideoDetails"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6c

    const-string/jumbo v0, "RealmVideoDetails"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->create(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v8

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "id"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    if-nez v5, :cond_2

    move v5, v6

    :goto_0
    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    const-string/jumbo v0, "RealmPlayable"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lio/realm/RealmPlayableRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    :cond_0
    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "playable"

    sget-object v2, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    const-string/jumbo v3, "RealmPlayable"

    invoke-virtual {p0, v3}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;Lio/realm/RealmObjectSchema;)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "profileId"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_3

    move v3, v6

    :goto_1
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_4

    move v4, v6

    :goto_2
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    if-nez v5, :cond_5

    move v5, v6

    :goto_3
    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "seasonNumber"

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_6

    move v3, v6

    :goto_4
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_7

    move v4, v6

    :goto_5
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    const-string/jumbo v0, "RealmSeason"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lio/realm/RealmSeasonRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    :cond_1
    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "seasonLabels"

    sget-object v2, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    const-string/jumbo v3, "RealmSeason"

    invoke-virtual {p0, v3}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;Lio/realm/RealmObjectSchema;)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "errorType"

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_8

    move v3, v6

    :goto_6
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_9

    move v4, v6

    :goto_7
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "videoType"

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_a

    move v3, v6

    :goto_8
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_b

    move v4, v6

    :goto_9
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "year"

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_c

    move v3, v6

    :goto_a
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_d

    move v4, v6

    :goto_b
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "maturityLevel"

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_e

    move v3, v6

    :goto_c
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_f

    move v4, v6

    :goto_d
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "synopsis"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_10

    move v3, v6

    :goto_e
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_11

    move v4, v6

    :goto_f
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    if-nez v5, :cond_12

    move v5, v6

    :goto_10
    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "quality"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_13

    move v3, v6

    :goto_11
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_14

    move v4, v6

    :goto_12
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    if-nez v5, :cond_15

    move v5, v6

    :goto_13
    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "actors"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_16

    move v3, v6

    :goto_14
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_17

    move v4, v6

    :goto_15
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    if-nez v5, :cond_18

    move v5, v6

    :goto_16
    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "genres"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_19

    move v3, v6

    :goto_17
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_1a

    move v4, v6

    :goto_18
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    if-nez v5, :cond_1b

    move v5, v6

    :goto_19
    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "cert"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_1c

    move v3, v6

    :goto_1a
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_1d

    move v4, v6

    :goto_1b
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    if-nez v5, :cond_1e

    move v5, v6

    :goto_1c
    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "supplMessage"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_1f

    move v3, v6

    :goto_1d
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_20

    move v4, v6

    :goto_1e
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    if-nez v5, :cond_21

    move v5, v6

    :goto_1f
    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "defaultTrailer"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_22

    move v3, v6

    :goto_20
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_23

    move v4, v6

    :goto_21
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    if-nez v5, :cond_24

    move v5, v6

    :goto_22
    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "copyright"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_25

    move v3, v6

    :goto_23
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_26

    move v4, v6

    :goto_24
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    if-nez v5, :cond_27

    move v5, v6

    :goto_25
    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "hResPortBoxArtUrl"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_28

    move v3, v6

    :goto_26
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_29

    move v4, v6

    :goto_27
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    if-nez v5, :cond_2a

    move v5, v6

    :goto_28
    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "hResLandBoxArtUrl"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_2b

    move v3, v6

    :goto_29
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_2c

    move v4, v6

    :goto_2a
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    if-nez v5, :cond_2d

    move v5, v6

    :goto_2b
    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "boxshotUrl"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_2e

    move v3, v6

    :goto_2c
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_2f

    move v4, v6

    :goto_2d
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    if-nez v5, :cond_30

    move v5, v6

    :goto_2e
    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "boxartImageId"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_31

    move v3, v6

    :goto_2f
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_32

    move v4, v6

    :goto_30
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    if-nez v5, :cond_33

    move v5, v6

    :goto_31
    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "horzDispUrl"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_34

    move v3, v6

    :goto_32
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_35

    move v4, v6

    :goto_33
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    if-nez v5, :cond_36

    move v5, v6

    :goto_34
    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "horzDispSmallUrl"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_37

    move v3, v6

    :goto_35
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_38

    move v4, v6

    :goto_36
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    if-nez v5, :cond_39

    move v5, v6

    :goto_37
    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "storyDispUrl"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_3a

    move v3, v6

    :goto_38
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_3b

    move v4, v6

    :goto_39
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    if-nez v5, :cond_3c

    move v5, v6

    :goto_3a
    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "tvCardUrl"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_3d

    move v3, v6

    :goto_3b
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_3e

    move v4, v6

    :goto_3c
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    if-nez v5, :cond_3f

    move v5, v6

    :goto_3d
    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "storyUrl"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_40

    move v3, v6

    :goto_3e
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_41

    move v4, v6

    :goto_3f
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    if-nez v5, :cond_42

    move v5, v6

    :goto_40
    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "bifUrl"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_43

    move v3, v6

    :goto_41
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_44

    move v4, v6

    :goto_42
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    if-nez v5, :cond_45

    move v5, v6

    :goto_43
    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "catalogIdUrl"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_46

    move v3, v6

    :goto_44
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_47

    move v4, v6

    :goto_45
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    if-nez v5, :cond_48

    move v5, v6

    :goto_46
    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "titleImgUrl"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_49

    move v3, v6

    :goto_47
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_4a

    move v4, v6

    :goto_48
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    if-nez v5, :cond_4b

    move v5, v6

    :goto_49
    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "titleCroppedImgUrl"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_4c

    move v3, v6

    :goto_4a
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_4d

    move v4, v6

    :goto_4b
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    if-nez v5, :cond_4e

    move v5, v6

    :goto_4c
    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "title"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_4f

    move v3, v6

    :goto_4d
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_50

    move v4, v6

    :goto_4e
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    if-nez v5, :cond_51

    move v5, v6

    :goto_4f
    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "isOriginal"

    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_52

    move v3, v6

    :goto_50
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_53

    move v4, v6

    :goto_51
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "isPreRelease"

    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_54

    move v3, v6

    :goto_52
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_55

    move v4, v6

    :goto_53
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "hasWatched"

    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_56

    move v3, v6

    :goto_54
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_57

    move v4, v6

    :goto_55
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "hasTrailers"

    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_58

    move v3, v6

    :goto_56
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_59

    move v4, v6

    :goto_57
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "isInQueue"

    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_5a

    move v3, v6

    :goto_58
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_5b

    move v4, v6

    :goto_59
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "isVideoHd"

    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_5c

    move v3, v6

    :goto_5a
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_5d

    move v4, v6

    :goto_5b
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "isVideoUhd"

    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_5e

    move v3, v6

    :goto_5c
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_5f

    move v4, v6

    :goto_5d
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "isVideo3D"

    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_60

    move v3, v6

    :goto_5e
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_61

    move v4, v6

    :goto_5f
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "isVideo5dot1"

    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_62

    move v3, v6

    :goto_60
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_63

    move v4, v6

    :goto_61
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "isVideoHdr10"

    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_64

    move v3, v6

    :goto_62
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_65

    move v4, v6

    :goto_63
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "isVideoDolbyVision"

    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_66

    move v3, v6

    :goto_64
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_67

    move v4, v6

    :goto_65
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "userRating"

    sget-object v2, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_68

    move v3, v6

    :goto_66
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_69

    move v4, v6

    :goto_67
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "predictedRating"

    sget-object v2, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    sget-boolean v3, Lio/realm/Property;->PRIMARY_KEY:Z

    if-nez v3, :cond_6a

    move v3, v6

    :goto_68
    sget-boolean v4, Lio/realm/Property;->INDEXED:Z

    if-nez v4, :cond_6b

    move v4, v6

    :goto_69
    sget-boolean v5, Lio/realm/Property;->REQUIRED:Z

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    move-object v0, v8

    :goto_6a
    return-object v0

    :cond_2
    move v5, v7

    goto/16 :goto_0

    :cond_3
    move v3, v7

    goto/16 :goto_1

    :cond_4
    move v4, v7

    goto/16 :goto_2

    :cond_5
    move v5, v7

    goto/16 :goto_3

    :cond_6
    move v3, v7

    goto/16 :goto_4

    :cond_7
    move v4, v7

    goto/16 :goto_5

    :cond_8
    move v3, v7

    goto/16 :goto_6

    :cond_9
    move v4, v7

    goto/16 :goto_7

    :cond_a
    move v3, v7

    goto/16 :goto_8

    :cond_b
    move v4, v7

    goto/16 :goto_9

    :cond_c
    move v3, v7

    goto/16 :goto_a

    :cond_d
    move v4, v7

    goto/16 :goto_b

    :cond_e
    move v3, v7

    goto/16 :goto_c

    :cond_f
    move v4, v7

    goto/16 :goto_d

    :cond_10
    move v3, v7

    goto/16 :goto_e

    :cond_11
    move v4, v7

    goto/16 :goto_f

    :cond_12
    move v5, v7

    goto/16 :goto_10

    :cond_13
    move v3, v7

    goto/16 :goto_11

    :cond_14
    move v4, v7

    goto/16 :goto_12

    :cond_15
    move v5, v7

    goto/16 :goto_13

    :cond_16
    move v3, v7

    goto/16 :goto_14

    :cond_17
    move v4, v7

    goto/16 :goto_15

    :cond_18
    move v5, v7

    goto/16 :goto_16

    :cond_19
    move v3, v7

    goto/16 :goto_17

    :cond_1a
    move v4, v7

    goto/16 :goto_18

    :cond_1b
    move v5, v7

    goto/16 :goto_19

    :cond_1c
    move v3, v7

    goto/16 :goto_1a

    :cond_1d
    move v4, v7

    goto/16 :goto_1b

    :cond_1e
    move v5, v7

    goto/16 :goto_1c

    :cond_1f
    move v3, v7

    goto/16 :goto_1d

    :cond_20
    move v4, v7

    goto/16 :goto_1e

    :cond_21
    move v5, v7

    goto/16 :goto_1f

    :cond_22
    move v3, v7

    goto/16 :goto_20

    :cond_23
    move v4, v7

    goto/16 :goto_21

    :cond_24
    move v5, v7

    goto/16 :goto_22

    :cond_25
    move v3, v7

    goto/16 :goto_23

    :cond_26
    move v4, v7

    goto/16 :goto_24

    :cond_27
    move v5, v7

    goto/16 :goto_25

    :cond_28
    move v3, v7

    goto/16 :goto_26

    :cond_29
    move v4, v7

    goto/16 :goto_27

    :cond_2a
    move v5, v7

    goto/16 :goto_28

    :cond_2b
    move v3, v7

    goto/16 :goto_29

    :cond_2c
    move v4, v7

    goto/16 :goto_2a

    :cond_2d
    move v5, v7

    goto/16 :goto_2b

    :cond_2e
    move v3, v7

    goto/16 :goto_2c

    :cond_2f
    move v4, v7

    goto/16 :goto_2d

    :cond_30
    move v5, v7

    goto/16 :goto_2e

    :cond_31
    move v3, v7

    goto/16 :goto_2f

    :cond_32
    move v4, v7

    goto/16 :goto_30

    :cond_33
    move v5, v7

    goto/16 :goto_31

    :cond_34
    move v3, v7

    goto/16 :goto_32

    :cond_35
    move v4, v7

    goto/16 :goto_33

    :cond_36
    move v5, v7

    goto/16 :goto_34

    :cond_37
    move v3, v7

    goto/16 :goto_35

    :cond_38
    move v4, v7

    goto/16 :goto_36

    :cond_39
    move v5, v7

    goto/16 :goto_37

    :cond_3a
    move v3, v7

    goto/16 :goto_38

    :cond_3b
    move v4, v7

    goto/16 :goto_39

    :cond_3c
    move v5, v7

    goto/16 :goto_3a

    :cond_3d
    move v3, v7

    goto/16 :goto_3b

    :cond_3e
    move v4, v7

    goto/16 :goto_3c

    :cond_3f
    move v5, v7

    goto/16 :goto_3d

    :cond_40
    move v3, v7

    goto/16 :goto_3e

    :cond_41
    move v4, v7

    goto/16 :goto_3f

    :cond_42
    move v5, v7

    goto/16 :goto_40

    :cond_43
    move v3, v7

    goto/16 :goto_41

    :cond_44
    move v4, v7

    goto/16 :goto_42

    :cond_45
    move v5, v7

    goto/16 :goto_43

    :cond_46
    move v3, v7

    goto/16 :goto_44

    :cond_47
    move v4, v7

    goto/16 :goto_45

    :cond_48
    move v5, v7

    goto/16 :goto_46

    :cond_49
    move v3, v7

    goto/16 :goto_47

    :cond_4a
    move v4, v7

    goto/16 :goto_48

    :cond_4b
    move v5, v7

    goto/16 :goto_49

    :cond_4c
    move v3, v7

    goto/16 :goto_4a

    :cond_4d
    move v4, v7

    goto/16 :goto_4b

    :cond_4e
    move v5, v7

    goto/16 :goto_4c

    :cond_4f
    move v3, v7

    goto/16 :goto_4d

    :cond_50
    move v4, v7

    goto/16 :goto_4e

    :cond_51
    move v5, v7

    goto/16 :goto_4f

    :cond_52
    move v3, v7

    goto/16 :goto_50

    :cond_53
    move v4, v7

    goto/16 :goto_51

    :cond_54
    move v3, v7

    goto/16 :goto_52

    :cond_55
    move v4, v7

    goto/16 :goto_53

    :cond_56
    move v3, v7

    goto/16 :goto_54

    :cond_57
    move v4, v7

    goto/16 :goto_55

    :cond_58
    move v3, v7

    goto/16 :goto_56

    :cond_59
    move v4, v7

    goto/16 :goto_57

    :cond_5a
    move v3, v7

    goto/16 :goto_58

    :cond_5b
    move v4, v7

    goto/16 :goto_59

    :cond_5c
    move v3, v7

    goto/16 :goto_5a

    :cond_5d
    move v4, v7

    goto/16 :goto_5b

    :cond_5e
    move v3, v7

    goto/16 :goto_5c

    :cond_5f
    move v4, v7

    goto/16 :goto_5d

    :cond_60
    move v3, v7

    goto/16 :goto_5e

    :cond_61
    move v4, v7

    goto/16 :goto_5f

    :cond_62
    move v3, v7

    goto/16 :goto_60

    :cond_63
    move v4, v7

    goto/16 :goto_61

    :cond_64
    move v3, v7

    goto/16 :goto_62

    :cond_65
    move v4, v7

    goto/16 :goto_63

    :cond_66
    move v3, v7

    goto/16 :goto_64

    :cond_67
    move v4, v7

    goto/16 :goto_65

    :cond_68
    move v3, v7

    goto/16 :goto_66

    :cond_69
    move v4, v7

    goto/16 :goto_67

    :cond_6a
    move v3, v7

    goto/16 :goto_68

    :cond_6b
    move v4, v7

    goto/16 :goto_69

    :cond_6c
    const-string/jumbo v0, "RealmVideoDetails"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    goto/16 :goto_6a
.end method

.method public static getTableName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "class_RealmVideoDetails"

    return-object v0
.end method

.method public static initTable(Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string/jumbo v0, "class_RealmVideoDetails"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "class_RealmVideoDetails"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "id"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    const-string/jumbo v1, "class_RealmPlayable"

    invoke-virtual {p0, v1}, Lio/realm/internal/SharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lio/realm/RealmPlayableRealmProxy;->initTable(Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;

    :cond_0
    sget-object v1, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "playable"

    const-string/jumbo v3, "class_RealmPlayable"

    invoke-virtual {p0, v3}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumnLink(Lio/realm/RealmFieldType;Ljava/lang/String;Lio/realm/internal/Table;)J

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "profileId"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "seasonNumber"

    invoke-virtual {v0, v1, v2, v5}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    const-string/jumbo v1, "class_RealmSeason"

    invoke-virtual {p0, v1}, Lio/realm/internal/SharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lio/realm/RealmSeasonRealmProxy;->initTable(Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;

    :cond_1
    sget-object v1, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "seasonLabels"

    const-string/jumbo v3, "class_RealmSeason"

    invoke-virtual {p0, v3}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumnLink(Lio/realm/RealmFieldType;Ljava/lang/String;Lio/realm/internal/Table;)J

    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "errorType"

    invoke-virtual {v0, v1, v2, v5}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "videoType"

    invoke-virtual {v0, v1, v2, v5}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "year"

    invoke-virtual {v0, v1, v2, v5}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "maturityLevel"

    invoke-virtual {v0, v1, v2, v5}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "synopsis"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "quality"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "actors"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "genres"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "cert"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "supplMessage"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "defaultTrailer"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "copyright"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "hResPortBoxArtUrl"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "hResLandBoxArtUrl"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "boxshotUrl"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "boxartImageId"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "horzDispUrl"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "horzDispSmallUrl"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "storyDispUrl"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "tvCardUrl"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "storyUrl"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "bifUrl"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "catalogIdUrl"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "titleImgUrl"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "titleCroppedImgUrl"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "isOriginal"

    invoke-virtual {v0, v1, v2, v5}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "isPreRelease"

    invoke-virtual {v0, v1, v2, v5}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "hasWatched"

    invoke-virtual {v0, v1, v2, v5}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "hasTrailers"

    invoke-virtual {v0, v1, v2, v5}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "isInQueue"

    invoke-virtual {v0, v1, v2, v5}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "isVideoHd"

    invoke-virtual {v0, v1, v2, v5}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "isVideoUhd"

    invoke-virtual {v0, v1, v2, v5}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "isVideo3D"

    invoke-virtual {v0, v1, v2, v5}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "isVideo5dot1"

    invoke-virtual {v0, v1, v2, v5}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "isVideoHdr10"

    invoke-virtual {v0, v1, v2, v5}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "isVideoDolbyVision"

    invoke-virtual {v0, v1, v2, v5}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "userRating"

    invoke-virtual {v0, v1, v2, v5}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    sget-object v1, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "predictedRating"

    invoke-virtual {v0, v1, v2, v5}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->addSearchIndex(J)V

    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->setPrimaryKey(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_2
    const-string/jumbo v0, "class_RealmVideoDetails"

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

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iput-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    new-instance v1, Lio/realm/ProxyState;

    const-class v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-direct {v1, v2, p0}, Lio/realm/ProxyState;-><init>(Ljava/lang/Class;Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    return-void
.end method

.method static update(Lio/realm/Realm;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;Ljava/util/Map;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;",
            "Ljava/util/Map",
            "<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;"
        }
    .end annotation

    const/4 v4, 0x1

    move-object v0, p2

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v0}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$playable()Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1, v0}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$playable(Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;)V

    :goto_0
    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$profileId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$profileId(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$seasonNumber()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$seasonNumber(I)V

    move-object v0, p2

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v0}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$seasonLabels()Lio/realm/RealmList;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v0}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$seasonLabels()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmList;->clear()V

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v2}, Lio/realm/RealmList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {v2, v1}, Lio/realm/RealmList;->get(I)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;

    if-eqz v0, :cond_2

    invoke-virtual {v3, v0}, Lio/realm/RealmList;->add(Lio/realm/RealmModel;)Z

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-static {p0, v1, v4, p3}, Lio/realm/RealmPlayableRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;ZLjava/util/Map;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$playable(Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$playable(Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v1}, Lio/realm/RealmList;->get(I)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;

    invoke-static {p0, v0, v4, p3}, Lio/realm/RealmSeasonRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;ZLjava/util/Map;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/realm/RealmList;->add(Lio/realm/RealmModel;)Z

    goto :goto_2

    :cond_3
    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$errorType()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$errorType(I)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$videoType()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$videoType(I)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$year()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$year(I)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$maturityLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$maturityLevel(I)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$synopsis()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$synopsis(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$quality()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$quality(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$actors()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$actors(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$genres()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$genres(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$cert()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$cert(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$supplMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$supplMessage(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$defaultTrailer()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$defaultTrailer(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$copyright()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$copyright(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$hResPortBoxArtUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$hResPortBoxArtUrl(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$hResLandBoxArtUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$hResLandBoxArtUrl(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$boxshotUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$boxshotUrl(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$boxartImageId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$boxartImageId(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$horzDispUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$horzDispUrl(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$horzDispSmallUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$horzDispSmallUrl(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$storyDispUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$storyDispUrl(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$tvCardUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$tvCardUrl(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$storyUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$storyUrl(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$bifUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$bifUrl(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$catalogIdUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$catalogIdUrl(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$titleImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$titleImgUrl(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$titleCroppedImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$titleCroppedImgUrl(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$isOriginal()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$isOriginal(Z)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$isPreRelease()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$isPreRelease(Z)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$hasWatched()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$hasWatched(Z)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$hasTrailers()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$hasTrailers(Z)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$isInQueue()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$isInQueue(Z)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$isVideoHd()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$isVideoHd(Z)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$isVideoUhd()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$isVideoUhd(Z)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$isVideo3D()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$isVideo3D(Z)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$isVideo5dot1()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$isVideo5dot1(Z)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$isVideoHdr10()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$isVideoHdr10(Z)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$isVideoDolbyVision()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$isVideoDolbyVision(Z)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$userRating()F

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$userRating(F)V

    move-object v0, p1

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    check-cast p2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {p2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$predictedRating()F

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$predictedRating(F)V

    return-object p1
.end method

.method public static validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;
    .locals 8

    const-wide/16 v6, 0x2c

    const-string/jumbo v0, "class_RealmVideoDetails"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8b

    const-string/jumbo v0, "class_RealmVideoDetails"

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

    const-string/jumbo v5, "Field count is less than expected - expected 44 but was "

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

    const-string/jumbo v3, "Field count is more than expected - expected 44 but was %1$d"

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

    const-string/jumbo v5, "Field count is more than expected - expected 44 but was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;-><init>(Ljava/lang/String;Lio/realm/internal/Table;)V

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
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->idIndex:J

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
    const-string/jumbo v1, "playable"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'playable\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_9
    const-string/jumbo v1, "playable"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_a

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'RealmPlayable\' for field \'playable\'"

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string/jumbo v1, "class_RealmPlayable"

    invoke-virtual {p0, v1}, Lio/realm/internal/SharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing class \'class_RealmPlayable\' for field \'playable\'"

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_b
    const-string/jumbo v1, "class_RealmPlayable"

    invoke-virtual {p0, v1}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v1

    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->playableIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->getLinkTarget(J)Lio/realm/internal/Table;

    move-result-object v4

    invoke-virtual {v4, v1}, Lio/realm/internal/Table;->hasSameSchema(Lio/realm/internal/Table;)Z

    move-result v4

    if-nez v4, :cond_c

    new-instance v3, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid RealmObject for field \'playable\': \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->playableIndex:J

    invoke-virtual {v2, v6, v7}, Lio/realm/internal/Table;->getLinkTarget(J)Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\' expected - was \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    :cond_c
    const-string/jumbo v1, "profileId"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'profileId\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_d
    const-string/jumbo v1, "profileId"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_e

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'profileId\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->profileIdIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_f

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'profileId\' is required. Either set @Required to field \'profileId\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_f
    const-string/jumbo v1, "seasonNumber"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'seasonNumber\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_10
    const-string/jumbo v1, "seasonNumber"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_11

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'int\' for field \'seasonNumber\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_11
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->seasonNumberIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'seasonNumber\' does support null values in the existing Realm file. Use corresponding boxed type for field \'seasonNumber\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_12
    const-string/jumbo v1, "seasonLabels"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'seasonLabels\'"

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_13
    const-string/jumbo v1, "seasonLabels"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_14

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'RealmSeason\' for field \'seasonLabels\'"

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_14
    const-string/jumbo v1, "class_RealmSeason"

    invoke-virtual {p0, v1}, Lio/realm/internal/SharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing class \'class_RealmSeason\' for field \'seasonLabels\'"

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_15
    const-string/jumbo v1, "class_RealmSeason"

    invoke-virtual {p0, v1}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v1

    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->seasonLabelsIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->getLinkTarget(J)Lio/realm/internal/Table;

    move-result-object v4

    invoke-virtual {v4, v1}, Lio/realm/internal/Table;->hasSameSchema(Lio/realm/internal/Table;)Z

    move-result v4

    if-nez v4, :cond_16

    new-instance v3, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid RealmList type for field \'seasonLabels\': \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->seasonLabelsIndex:J

    invoke-virtual {v2, v6, v7}, Lio/realm/internal/Table;->getLinkTarget(J)Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\' expected - was \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    :cond_16
    const-string/jumbo v1, "errorType"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'errorType\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_17
    const-string/jumbo v1, "errorType"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_18

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'int\' for field \'errorType\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_18
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->errorTypeIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_19

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'errorType\' does support null values in the existing Realm file. Use corresponding boxed type for field \'errorType\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_19
    const-string/jumbo v1, "videoType"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'videoType\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1a
    const-string/jumbo v1, "videoType"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_1b

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'int\' for field \'videoType\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1b
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->videoTypeIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_1c

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'videoType\' does support null values in the existing Realm file. Use corresponding boxed type for field \'videoType\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1c
    const-string/jumbo v1, "year"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'year\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1d
    const-string/jumbo v1, "year"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_1e

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'int\' for field \'year\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1e
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->yearIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_1f

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'year\' does support null values in the existing Realm file. Use corresponding boxed type for field \'year\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1f
    const-string/jumbo v1, "maturityLevel"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'maturityLevel\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_20
    const-string/jumbo v1, "maturityLevel"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_21

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'int\' for field \'maturityLevel\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_21
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->maturityLevelIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_22

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'maturityLevel\' does support null values in the existing Realm file. Use corresponding boxed type for field \'maturityLevel\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_22
    const-string/jumbo v1, "synopsis"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'synopsis\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_23
    const-string/jumbo v1, "synopsis"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_24

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'synopsis\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_24
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->synopsisIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_25

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'synopsis\' is required. Either set @Required to field \'synopsis\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_25
    const-string/jumbo v1, "quality"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'quality\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_26
    const-string/jumbo v1, "quality"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_27

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'quality\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_27
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->qualityIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_28

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'quality\' is required. Either set @Required to field \'quality\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_28
    const-string/jumbo v1, "actors"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'actors\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_29
    const-string/jumbo v1, "actors"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_2a

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'actors\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_2a
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->actorsIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_2b

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'actors\' is required. Either set @Required to field \'actors\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_2b
    const-string/jumbo v1, "genres"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'genres\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_2c
    const-string/jumbo v1, "genres"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_2d

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'genres\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_2d
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->genresIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_2e

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'genres\' is required. Either set @Required to field \'genres\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_2e
    const-string/jumbo v1, "cert"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'cert\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_2f
    const-string/jumbo v1, "cert"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_30

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'cert\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_30
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->certIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_31

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'cert\' is required. Either set @Required to field \'cert\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_31
    const-string/jumbo v1, "supplMessage"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'supplMessage\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_32
    const-string/jumbo v1, "supplMessage"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_33

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'supplMessage\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_33
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->supplMessageIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_34

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'supplMessage\' is required. Either set @Required to field \'supplMessage\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_34
    const-string/jumbo v1, "defaultTrailer"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'defaultTrailer\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_35
    const-string/jumbo v1, "defaultTrailer"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_36

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'defaultTrailer\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_36
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->defaultTrailerIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_37

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'defaultTrailer\' is required. Either set @Required to field \'defaultTrailer\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_37
    const-string/jumbo v1, "copyright"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'copyright\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_38
    const-string/jumbo v1, "copyright"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_39

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'copyright\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_39
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->copyrightIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_3a

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'copyright\' is required. Either set @Required to field \'copyright\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_3a
    const-string/jumbo v1, "hResPortBoxArtUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'hResPortBoxArtUrl\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_3b
    const-string/jumbo v1, "hResPortBoxArtUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_3c

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'hResPortBoxArtUrl\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_3c
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hResPortBoxArtUrlIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_3d

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'hResPortBoxArtUrl\' is required. Either set @Required to field \'hResPortBoxArtUrl\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_3d
    const-string/jumbo v1, "hResLandBoxArtUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'hResLandBoxArtUrl\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_3e
    const-string/jumbo v1, "hResLandBoxArtUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_3f

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'hResLandBoxArtUrl\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_3f
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hResLandBoxArtUrlIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_40

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'hResLandBoxArtUrl\' is required. Either set @Required to field \'hResLandBoxArtUrl\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_40
    const-string/jumbo v1, "boxshotUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'boxshotUrl\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_41
    const-string/jumbo v1, "boxshotUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_42

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'boxshotUrl\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_42
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->boxshotUrlIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_43

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'boxshotUrl\' is required. Either set @Required to field \'boxshotUrl\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_43
    const-string/jumbo v1, "boxartImageId"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'boxartImageId\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_44
    const-string/jumbo v1, "boxartImageId"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_45

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'boxartImageId\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_45
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->boxartImageIdIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_46

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'boxartImageId\' is required. Either set @Required to field \'boxartImageId\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_46
    const-string/jumbo v1, "horzDispUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'horzDispUrl\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_47
    const-string/jumbo v1, "horzDispUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_48

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'horzDispUrl\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_48
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->horzDispUrlIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_49

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'horzDispUrl\' is required. Either set @Required to field \'horzDispUrl\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_49
    const-string/jumbo v1, "horzDispSmallUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'horzDispSmallUrl\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_4a
    const-string/jumbo v1, "horzDispSmallUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_4b

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'horzDispSmallUrl\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_4b
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->horzDispSmallUrlIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_4c

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'horzDispSmallUrl\' is required. Either set @Required to field \'horzDispSmallUrl\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_4c
    const-string/jumbo v1, "storyDispUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'storyDispUrl\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_4d
    const-string/jumbo v1, "storyDispUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_4e

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'storyDispUrl\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_4e
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->storyDispUrlIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_4f

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'storyDispUrl\' is required. Either set @Required to field \'storyDispUrl\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_4f
    const-string/jumbo v1, "tvCardUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'tvCardUrl\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_50
    const-string/jumbo v1, "tvCardUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_51

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'tvCardUrl\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_51
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->tvCardUrlIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_52

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'tvCardUrl\' is required. Either set @Required to field \'tvCardUrl\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_52
    const-string/jumbo v1, "storyUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'storyUrl\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_53
    const-string/jumbo v1, "storyUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_54

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'storyUrl\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_54
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->storyUrlIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_55

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'storyUrl\' is required. Either set @Required to field \'storyUrl\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_55
    const-string/jumbo v1, "bifUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_56

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'bifUrl\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_56
    const-string/jumbo v1, "bifUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_57

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'bifUrl\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_57
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->bifUrlIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_58

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'bifUrl\' is required. Either set @Required to field \'bifUrl\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_58
    const-string/jumbo v1, "catalogIdUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'catalogIdUrl\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_59
    const-string/jumbo v1, "catalogIdUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_5a

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'catalogIdUrl\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_5a
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->catalogIdUrlIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_5b

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'catalogIdUrl\' is required. Either set @Required to field \'catalogIdUrl\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_5b
    const-string/jumbo v1, "titleImgUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'titleImgUrl\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_5c
    const-string/jumbo v1, "titleImgUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_5d

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'titleImgUrl\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_5d
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->titleImgUrlIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_5e

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'titleImgUrl\' is required. Either set @Required to field \'titleImgUrl\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_5e
    const-string/jumbo v1, "titleCroppedImgUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'titleCroppedImgUrl\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_5f
    const-string/jumbo v1, "titleCroppedImgUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_60

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'titleCroppedImgUrl\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_60
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->titleCroppedImgUrlIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_61

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'titleCroppedImgUrl\' is required. Either set @Required to field \'titleCroppedImgUrl\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_61
    const-string/jumbo v1, "title"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'title\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_62
    const-string/jumbo v1, "title"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_63

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'title\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_63
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->titleIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_64

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'title\' is required. Either set @Required to field \'title\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_64
    const-string/jumbo v1, "isOriginal"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'isOriginal\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_65
    const-string/jumbo v1, "isOriginal"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_66

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'isOriginal\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_66
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isOriginalIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_67

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'isOriginal\' does support null values in the existing Realm file. Use corresponding boxed type for field \'isOriginal\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_67
    const-string/jumbo v1, "isPreRelease"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_68

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'isPreRelease\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_68
    const-string/jumbo v1, "isPreRelease"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_69

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'isPreRelease\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_69
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isPreReleaseIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_6a

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'isPreRelease\' does support null values in the existing Realm file. Use corresponding boxed type for field \'isPreRelease\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_6a
    const-string/jumbo v1, "hasWatched"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6b

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'hasWatched\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_6b
    const-string/jumbo v1, "hasWatched"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_6c

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'hasWatched\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_6c
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hasWatchedIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_6d

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'hasWatched\' does support null values in the existing Realm file. Use corresponding boxed type for field \'hasWatched\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_6d
    const-string/jumbo v1, "hasTrailers"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'hasTrailers\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_6e
    const-string/jumbo v1, "hasTrailers"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_6f

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'hasTrailers\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_6f
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hasTrailersIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_70

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'hasTrailers\' does support null values in the existing Realm file. Use corresponding boxed type for field \'hasTrailers\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_70
    const-string/jumbo v1, "isInQueue"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'isInQueue\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_71
    const-string/jumbo v1, "isInQueue"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_72

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'isInQueue\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_72
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isInQueueIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_73

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'isInQueue\' does support null values in the existing Realm file. Use corresponding boxed type for field \'isInQueue\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_73
    const-string/jumbo v1, "isVideoHd"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_74

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'isVideoHd\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_74
    const-string/jumbo v1, "isVideoHd"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_75

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'isVideoHd\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_75
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideoHdIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_76

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'isVideoHd\' does support null values in the existing Realm file. Use corresponding boxed type for field \'isVideoHd\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_76
    const-string/jumbo v1, "isVideoUhd"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_77

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'isVideoUhd\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_77
    const-string/jumbo v1, "isVideoUhd"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_78

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'isVideoUhd\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_78
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideoUhdIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_79

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'isVideoUhd\' does support null values in the existing Realm file. Use corresponding boxed type for field \'isVideoUhd\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_79
    const-string/jumbo v1, "isVideo3D"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7a

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'isVideo3D\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_7a
    const-string/jumbo v1, "isVideo3D"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_7b

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'isVideo3D\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_7b
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideo3DIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_7c

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'isVideo3D\' does support null values in the existing Realm file. Use corresponding boxed type for field \'isVideo3D\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_7c
    const-string/jumbo v1, "isVideo5dot1"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7d

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'isVideo5dot1\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_7d
    const-string/jumbo v1, "isVideo5dot1"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_7e

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'isVideo5dot1\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_7e
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideo5dot1Index:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_7f

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'isVideo5dot1\' does support null values in the existing Realm file. Use corresponding boxed type for field \'isVideo5dot1\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_7f
    const-string/jumbo v1, "isVideoHdr10"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_80

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'isVideoHdr10\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_80
    const-string/jumbo v1, "isVideoHdr10"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_81

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'isVideoHdr10\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_81
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideoHdr10Index:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_82

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'isVideoHdr10\' does support null values in the existing Realm file. Use corresponding boxed type for field \'isVideoHdr10\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_82
    const-string/jumbo v1, "isVideoDolbyVision"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_83

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'isVideoDolbyVision\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_83
    const-string/jumbo v1, "isVideoDolbyVision"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_84

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'isVideoDolbyVision\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_84
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideoDolbyVisionIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_85

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'isVideoDolbyVision\' does support null values in the existing Realm file. Use corresponding boxed type for field \'isVideoDolbyVision\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_85
    const-string/jumbo v1, "userRating"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_86

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'userRating\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_86
    const-string/jumbo v1, "userRating"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_87

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'float\' for field \'userRating\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_87
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->userRatingIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_88

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'userRating\' does support null values in the existing Realm file. Use corresponding boxed type for field \'userRating\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_88
    const-string/jumbo v1, "predictedRating"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_89

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'predictedRating\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_89
    const-string/jumbo v1, "predictedRating"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    if-eq v1, v3, :cond_8a

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'float\' for field \'predictedRating\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_8a
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->predictedRatingIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_8c

    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'predictedRating\' does support null values in the existing Realm file. Use corresponding boxed type for field \'predictedRating\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_8b
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "The \'RealmVideoDetails\' class is missing from the schema for this Realm."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_8c
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
    check-cast p1, Lio/realm/RealmVideoDetailsRealmProxy;

    iget-object v2, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

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
    iget-object v2, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

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
    iget-object v2, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    iget-object v4, p1, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

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

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

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

.method public realmGet$actors()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->actorsIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$bifUrl()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->bifUrlIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$boxartImageId()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->boxartImageIdIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$boxshotUrl()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->boxshotUrlIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$catalogIdUrl()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->catalogIdUrlIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$cert()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->certIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$copyright()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->copyrightIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$defaultTrailer()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->defaultTrailerIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$errorType()I
    .locals 4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->errorTypeIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$genres()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->genresIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$hResLandBoxArtUrl()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hResLandBoxArtUrlIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$hResPortBoxArtUrl()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hResPortBoxArtUrlIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$hasTrailers()Z
    .locals 4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hasTrailersIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$hasWatched()Z
    .locals 4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hasWatchedIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$horzDispSmallUrl()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->horzDispSmallUrlIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$horzDispUrl()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->horzDispUrlIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->idIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$isInQueue()Z
    .locals 4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isInQueueIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$isOriginal()Z
    .locals 4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isOriginalIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$isPreRelease()Z
    .locals 4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isPreReleaseIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$isVideo3D()Z
    .locals 4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideo3DIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$isVideo5dot1()Z
    .locals 4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideo5dot1Index:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$isVideoDolbyVision()Z
    .locals 4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideoDolbyVisionIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$isVideoHd()Z
    .locals 4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideoHdIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$isVideoHdr10()Z
    .locals 4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideoHdr10Index:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$isVideoUhd()Z
    .locals 4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideoUhdIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$maturityLevel()I
    .locals 4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->maturityLevelIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$playable()Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;
    .locals 6

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->playableIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->isNullLink(J)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    iget-object v2, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    iget-object v3, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v4, v3, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->playableIndex:J

    invoke-interface {v2, v4, v5}, Lio/realm/internal/Row;->getLink(J)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;JZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    goto :goto_0
.end method

.method public realmGet$predictedRating()F
    .locals 4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->predictedRatingIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getFloat(J)F

    move-result v0

    return v0
.end method

.method public realmGet$profileId()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->profileIdIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$proxyState()Lio/realm/ProxyState;
    .locals 1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$quality()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->qualityIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$seasonLabels()Lio/realm/RealmList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmList",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->seasonLabelsRealmList:Lio/realm/RealmList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->seasonLabelsRealmList:Lio/realm/RealmList;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->seasonLabelsIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getLinkList(J)Lio/realm/internal/LinkView;

    move-result-object v0

    new-instance v1, Lio/realm/RealmList;

    const-class v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;

    iget-object v3, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lio/realm/RealmList;-><init>(Ljava/lang/Class;Lio/realm/internal/LinkView;Lio/realm/BaseRealm;)V

    iput-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->seasonLabelsRealmList:Lio/realm/RealmList;

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->seasonLabelsRealmList:Lio/realm/RealmList;

    goto :goto_0
.end method

.method public realmGet$seasonNumber()I
    .locals 4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->seasonNumberIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$storyDispUrl()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->storyDispUrlIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$storyUrl()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->storyUrlIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$supplMessage()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->supplMessageIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$synopsis()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->synopsisIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$title()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->titleIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$titleCroppedImgUrl()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->titleCroppedImgUrlIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$titleImgUrl()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->titleImgUrlIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$tvCardUrl()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->tvCardUrlIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$userRating()F
    .locals 4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->userRatingIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getFloat(J)F

    move-result v0

    return v0
.end method

.method public realmGet$videoType()I
    .locals 4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->videoTypeIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$year()I
    .locals 4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->yearIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmSet$actors(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    if-nez p1, :cond_2

    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->actorsIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->actorsIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->actorsIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->actorsIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$bifUrl(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    if-nez p1, :cond_2

    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->bifUrlIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->bifUrlIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->bifUrlIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->bifUrlIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$boxartImageId(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    if-nez p1, :cond_2

    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->boxartImageIdIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->boxartImageIdIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->boxartImageIdIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->boxartImageIdIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$boxshotUrl(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    if-nez p1, :cond_2

    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->boxshotUrlIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->boxshotUrlIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->boxshotUrlIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->boxshotUrlIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$catalogIdUrl(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    if-nez p1, :cond_2

    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->catalogIdUrlIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->catalogIdUrlIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->catalogIdUrlIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->catalogIdUrlIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$cert(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    if-nez p1, :cond_2

    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->certIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->certIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->certIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->certIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$copyright(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    if-nez p1, :cond_2

    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->copyrightIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->copyrightIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->copyrightIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->copyrightIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$defaultTrailer(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    if-nez p1, :cond_2

    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->defaultTrailerIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->defaultTrailerIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->defaultTrailerIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->defaultTrailerIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$errorType(I)V
    .locals 9

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->errorTypeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->errorTypeIndex:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/Row;->setLong(JJ)V

    goto :goto_0
.end method

.method public realmSet$genres(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    if-nez p1, :cond_2

    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->genresIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->genresIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->genresIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->genresIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$hResLandBoxArtUrl(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    if-nez p1, :cond_2

    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hResLandBoxArtUrlIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hResLandBoxArtUrlIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hResLandBoxArtUrlIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hResLandBoxArtUrlIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$hResPortBoxArtUrl(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    if-nez p1, :cond_2

    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hResPortBoxArtUrlIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hResPortBoxArtUrlIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hResPortBoxArtUrlIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hResPortBoxArtUrlIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$hasTrailers(Z)V
    .locals 8

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hasTrailersIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hasTrailersIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    goto :goto_0
.end method

.method public realmSet$hasWatched(Z)V
    .locals 8

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hasWatchedIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hasWatchedIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    goto :goto_0
.end method

.method public realmSet$horzDispSmallUrl(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    if-nez p1, :cond_2

    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->horzDispSmallUrlIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->horzDispSmallUrlIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->horzDispSmallUrlIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->horzDispSmallUrlIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$horzDispUrl(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    if-nez p1, :cond_2

    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->horzDispUrlIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->horzDispUrlIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->horzDispUrlIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->horzDispUrlIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    new-instance v0, Lio/realm/exceptions/RealmException;

    const-string/jumbo v1, "Primary key field \'id\' cannot be changed after object was created."

    invoke-direct {v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public realmSet$isInQueue(Z)V
    .locals 8

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isInQueueIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isInQueueIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    goto :goto_0
.end method

.method public realmSet$isOriginal(Z)V
    .locals 8

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isOriginalIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isOriginalIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    goto :goto_0
.end method

.method public realmSet$isPreRelease(Z)V
    .locals 8

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isPreReleaseIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isPreReleaseIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    goto :goto_0
.end method

.method public realmSet$isVideo3D(Z)V
    .locals 8

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideo3DIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideo3DIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    goto :goto_0
.end method

.method public realmSet$isVideo5dot1(Z)V
    .locals 8

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideo5dot1Index:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideo5dot1Index:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    goto :goto_0
.end method

.method public realmSet$isVideoDolbyVision(Z)V
    .locals 8

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideoDolbyVisionIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideoDolbyVisionIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    goto :goto_0
.end method

.method public realmSet$isVideoHd(Z)V
    .locals 8

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideoHdIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideoHdIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    goto :goto_0
.end method

.method public realmSet$isVideoHdr10(Z)V
    .locals 8

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideoHdr10Index:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideoHdr10Index:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    goto :goto_0
.end method

.method public realmSet$isVideoUhd(Z)V
    .locals 8

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideoUhdIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideoUhdIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    goto :goto_0
.end method

.method public realmSet$maturityLevel(I)V
    .locals 9

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->maturityLevelIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->maturityLevelIndex:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/Row;->setLong(JJ)V

    goto :goto_0
.end method

.method public realmSet$playable(Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;)V
    .locals 9

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "playable"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_b

    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    invoke-virtual {v0, p1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    move-object v6, v0

    :goto_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    if-nez v6, :cond_3

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v0, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->playableIndex:J

    invoke-interface {v4, v0, v1}, Lio/realm/internal/Row;->nullifyLink(J)V

    goto :goto_0

    :cond_3
    invoke-static {v6}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'value\' is not a valid managed object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move-object v0, v6

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    if-eq v0, v1, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'value\' belongs to a different Realm."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->playableIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    check-cast v6, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v6}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLink(JJJZ)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_7

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->playableIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->nullifyLink(J)V

    goto/16 :goto_0

    :cond_7
    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'value\' is not a valid managed object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move-object v0, p1

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    if-eq v0, v1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'value\' belongs to a different Realm."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->playableIndex:J

    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/Row;->setLink(JJ)V

    goto/16 :goto_0

    :cond_b
    move-object v6, p1

    goto/16 :goto_1
.end method

.method public realmSet$predictedRating(F)V
    .locals 8

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->predictedRatingIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setFloat(JJFZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->predictedRatingIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setFloat(JF)V

    goto :goto_0
.end method

.method public realmSet$profileId(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    if-nez p1, :cond_2

    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->profileIdIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->profileIdIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->profileIdIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->profileIdIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$quality(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    if-nez p1, :cond_2

    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->qualityIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->qualityIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->qualityIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->qualityIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$seasonLabels(Lio/realm/RealmList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "seasonLabels"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    new-instance v2, Lio/realm/RealmList;

    invoke-direct {v2}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;

    if-eqz v1, :cond_3

    invoke-static {v1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    invoke-virtual {v2, v1}, Lio/realm/RealmList;->add(Lio/realm/RealmModel;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v1

    invoke-virtual {v2, v1}, Lio/realm/RealmList;->add(Lio/realm/RealmModel;)Z

    goto :goto_0

    :cond_5
    move-object p1, v2

    :cond_6
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->seasonLabelsIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getLinkList(J)Lio/realm/internal/LinkView;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/LinkView;->clear()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    invoke-static {v0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Each element of \'value\' must be a valid managed object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    iget-object v4, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    if-eq v1, v4, :cond_9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Each element of \'value\' must belong to the same Realm."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/LinkView;->add(J)V

    goto :goto_1
.end method

.method public realmSet$seasonNumber(I)V
    .locals 9

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->seasonNumberIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->seasonNumberIndex:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/Row;->setLong(JJ)V

    goto :goto_0
.end method

.method public realmSet$storyDispUrl(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    if-nez p1, :cond_2

    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->storyDispUrlIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->storyDispUrlIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->storyDispUrlIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->storyDispUrlIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$storyUrl(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    if-nez p1, :cond_2

    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->storyUrlIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->storyUrlIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->storyUrlIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->storyUrlIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$supplMessage(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    if-nez p1, :cond_2

    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->supplMessageIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->supplMessageIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->supplMessageIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->supplMessageIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$synopsis(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    if-nez p1, :cond_2

    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->synopsisIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->synopsisIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->synopsisIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->synopsisIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$title(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    if-nez p1, :cond_2

    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->titleIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->titleIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->titleIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->titleIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$titleCroppedImgUrl(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    if-nez p1, :cond_2

    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->titleCroppedImgUrlIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->titleCroppedImgUrlIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->titleCroppedImgUrlIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->titleCroppedImgUrlIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$titleImgUrl(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    if-nez p1, :cond_2

    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->titleImgUrlIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->titleImgUrlIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->titleImgUrlIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->titleImgUrlIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$tvCardUrl(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    if-nez p1, :cond_2

    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->tvCardUrlIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->tvCardUrlIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_4

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->tvCardUrlIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->tvCardUrlIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$userRating(F)V
    .locals 8

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->userRatingIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setFloat(JJFZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->userRatingIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setFloat(JF)V

    goto :goto_0
.end method

.method public realmSet$videoType(I)V
    .locals 9

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->videoTypeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->videoTypeIndex:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/Row;->setLong(JJ)V

    goto :goto_0
.end method

.method public realmSet$year(I)V
    .locals 9

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->yearIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->yearIndex:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/Row;->setLong(JJ)V

    goto :goto_0
.end method
