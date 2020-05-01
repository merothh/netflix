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

    .prologue
    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 240
    const-string/jumbo v1, "id"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    const-string/jumbo v1, "playable"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    const-string/jumbo v1, "profileId"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    const-string/jumbo v1, "seasonNumber"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    const-string/jumbo v1, "seasonLabels"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    const-string/jumbo v1, "errorType"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    const-string/jumbo v1, "videoType"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    const-string/jumbo v1, "year"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    const-string/jumbo v1, "maturityLevel"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    const-string/jumbo v1, "synopsis"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    const-string/jumbo v1, "quality"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    const-string/jumbo v1, "actors"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    const-string/jumbo v1, "genres"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    const-string/jumbo v1, "cert"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    const-string/jumbo v1, "supplMessage"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    const-string/jumbo v1, "defaultTrailer"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    const-string/jumbo v1, "copyright"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    const-string/jumbo v1, "hResPortBoxArtUrl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    const-string/jumbo v1, "hResLandBoxArtUrl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    const-string/jumbo v1, "boxshotUrl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    const-string/jumbo v1, "boxartImageId"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    const-string/jumbo v1, "horzDispUrl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    const-string/jumbo v1, "horzDispSmallUrl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    const-string/jumbo v1, "storyDispUrl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    const-string/jumbo v1, "tvCardUrl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    const-string/jumbo v1, "storyUrl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    const-string/jumbo v1, "bifUrl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    const-string/jumbo v1, "catalogIdUrl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    const-string/jumbo v1, "titleImgUrl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    const-string/jumbo v1, "titleCroppedImgUrl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    const-string/jumbo v1, "title"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    const-string/jumbo v1, "isOriginal"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    const-string/jumbo v1, "isPreRelease"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    const-string/jumbo v1, "hasWatched"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    const-string/jumbo v1, "hasTrailers"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    const-string/jumbo v1, "isInQueue"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    const-string/jumbo v1, "isVideoHd"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    const-string/jumbo v1, "isVideoUhd"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    const-string/jumbo v1, "isVideo3D"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    const-string/jumbo v1, "isVideo5dot1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    const-string/jumbo v1, "isVideoHdr10"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    const-string/jumbo v1, "isVideoDolbyVision"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    const-string/jumbo v1, "userRating"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    const-string/jumbo v1, "predictedRating"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/realm/RealmVideoDetailsRealmProxy;->FIELD_NAMES:Ljava/util/List;

    .line 285
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;-><init>()V

    .line 288
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 289
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 291
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    .line 292
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

    .prologue
    const/4 v3, 0x0

    .line 3161
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 3162
    if-eqz v0, :cond_0

    .line 3163
    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    .line 3236
    :goto_0
    return-object v0

    .line 3166
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

    .line 3167
    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p1

    .line 3169
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$playable()Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    move-result-object v2

    .line 3170
    if-eqz v2, :cond_2

    .line 3171
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    .line 3172
    if-eqz v1, :cond_1

    move-object v2, v0

    .line 3173
    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$playable(Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;)V

    :goto_1
    move-object v1, v0

    .line 3180
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$profileId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$profileId(Ljava/lang/String;)V

    move-object v1, v0

    .line 3181
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$seasonNumber()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$seasonNumber(I)V

    move-object v1, p1

    .line 3183
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$seasonLabels()Lio/realm/RealmList;

    move-result-object v4

    .line 3184
    if-eqz v4, :cond_4

    move-object v1, v0

    .line 3185
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$seasonLabels()Lio/realm/RealmList;

    move-result-object v5

    move v2, v3

    .line 3186
    :goto_2
    invoke-virtual {v4}, Lio/realm/RealmList;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    .line 3187
    invoke-virtual {v4, v2}, Lio/realm/RealmList;->get(I)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;

    .line 3188
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;

    .line 3189
    if-eqz v1, :cond_3

    .line 3190
    invoke-virtual {v5, v1}, Lio/realm/RealmList;->add(Lio/realm/RealmModel;)Z

    .line 3186
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_1
    move-object v1, v0

    .line 3175
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-static {p0, v2, p2, p3}, Lio/realm/RealmPlayableRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;ZLjava/util/Map;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$playable(Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    .line 3178
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$playable(Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;)V

    goto :goto_1

    .line 3192
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

    .line 3197
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$errorType()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$errorType(I)V

    move-object v1, v0

    .line 3198
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$videoType()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$videoType(I)V

    move-object v1, v0

    .line 3199
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$year()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$year(I)V

    move-object v1, v0

    .line 3200
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$maturityLevel()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$maturityLevel(I)V

    move-object v1, v0

    .line 3201
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$synopsis()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$synopsis(Ljava/lang/String;)V

    move-object v1, v0

    .line 3202
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$quality()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$quality(Ljava/lang/String;)V

    move-object v1, v0

    .line 3203
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$actors()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$actors(Ljava/lang/String;)V

    move-object v1, v0

    .line 3204
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$genres()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$genres(Ljava/lang/String;)V

    move-object v1, v0

    .line 3205
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$cert()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$cert(Ljava/lang/String;)V

    move-object v1, v0

    .line 3206
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$supplMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$supplMessage(Ljava/lang/String;)V

    move-object v1, v0

    .line 3207
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$defaultTrailer()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$defaultTrailer(Ljava/lang/String;)V

    move-object v1, v0

    .line 3208
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$copyright()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$copyright(Ljava/lang/String;)V

    move-object v1, v0

    .line 3209
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$hResPortBoxArtUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$hResPortBoxArtUrl(Ljava/lang/String;)V

    move-object v1, v0

    .line 3210
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$hResLandBoxArtUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$hResLandBoxArtUrl(Ljava/lang/String;)V

    move-object v1, v0

    .line 3211
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$boxshotUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$boxshotUrl(Ljava/lang/String;)V

    move-object v1, v0

    .line 3212
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$boxartImageId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$boxartImageId(Ljava/lang/String;)V

    move-object v1, v0

    .line 3213
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$horzDispUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$horzDispUrl(Ljava/lang/String;)V

    move-object v1, v0

    .line 3214
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$horzDispSmallUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$horzDispSmallUrl(Ljava/lang/String;)V

    move-object v1, v0

    .line 3215
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$storyDispUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$storyDispUrl(Ljava/lang/String;)V

    move-object v1, v0

    .line 3216
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$tvCardUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$tvCardUrl(Ljava/lang/String;)V

    move-object v1, v0

    .line 3217
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$storyUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$storyUrl(Ljava/lang/String;)V

    move-object v1, v0

    .line 3218
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$bifUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$bifUrl(Ljava/lang/String;)V

    move-object v1, v0

    .line 3219
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$catalogIdUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$catalogIdUrl(Ljava/lang/String;)V

    move-object v1, v0

    .line 3220
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$titleImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$titleImgUrl(Ljava/lang/String;)V

    move-object v1, v0

    .line 3221
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$titleCroppedImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$titleCroppedImgUrl(Ljava/lang/String;)V

    move-object v1, v0

    .line 3222
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    move-object v1, v0

    .line 3223
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$isOriginal()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$isOriginal(Z)V

    move-object v1, v0

    .line 3224
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$isPreRelease()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$isPreRelease(Z)V

    move-object v1, v0

    .line 3225
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$hasWatched()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$hasWatched(Z)V

    move-object v1, v0

    .line 3226
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$hasTrailers()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$hasTrailers(Z)V

    move-object v1, v0

    .line 3227
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$isInQueue()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$isInQueue(Z)V

    move-object v1, v0

    .line 3228
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$isVideoHd()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$isVideoHd(Z)V

    move-object v1, v0

    .line 3229
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$isVideoUhd()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$isVideoUhd(Z)V

    move-object v1, v0

    .line 3230
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$isVideo3D()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$isVideo3D(Z)V

    move-object v1, v0

    .line 3231
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$isVideo5dot1()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$isVideo5dot1(Z)V

    move-object v1, v0

    .line 3232
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$isVideoHdr10()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$isVideoHdr10(Z)V

    move-object v1, v0

    .line 3233
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$isVideoDolbyVision()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$isVideoDolbyVision(Z)V

    move-object v1, v0

    .line 3234
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$userRating()F

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$userRating(F)V

    move-object v1, v0

    .line 3235
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

    .prologue
    const/4 v4, 0x0

    .line 3116
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

    .line 3117
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3119
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

    .line 3155
    :goto_0
    return-object p1

    .line 3122
    :cond_1
    sget-object v2, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v2}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/BaseRealm$RealmObjectContext;

    .line 3123
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    .line 3124
    if-eqz v3, :cond_2

    .line 3125
    check-cast v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    move-object p1, v3

    goto :goto_0

    .line 3127
    :cond_2
    const/4 v5, 0x0

    .line 3129
    if-eqz p2, :cond_6

    .line 3130
    const-class v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-virtual {p0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v8

    .line 3131
    invoke-virtual {v8}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v6

    move-object v3, p1

    .line 3132
    check-cast v3, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v3

    .line 3134
    if-nez v3, :cond_3

    .line 3135
    invoke-virtual {v8, v6, v7}, Lio/realm/internal/Table;->findFirstNull(J)J

    move-result-wide v6

    .line 3139
    :goto_1
    const-wide/16 v10, -0x1

    cmp-long v3, v6, v10

    if-eqz v3, :cond_4

    .line 3141
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

    .line 3142
    new-instance v4, Lio/realm/RealmVideoDetailsRealmProxy;

    invoke-direct {v4}, Lio/realm/RealmVideoDetailsRealmProxy;-><init>()V

    .line 3143
    move-object v0, v4

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    move-object v3, v0

    invoke-interface {p3, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3145
    invoke-virtual {v2}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    move v2, p2

    .line 3152
    :goto_2
    if-eqz v2, :cond_5

    .line 3153
    invoke-static {p0, v4, p1, p3}, Lio/realm/RealmVideoDetailsRealmProxy;->update(Lio/realm/Realm;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;Ljava/util/Map;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    move-result-object p1

    goto :goto_0

    .line 3137
    :cond_3
    invoke-virtual {v8, v6, v7, v3}, Lio/realm/internal/Table;->findFirstString(JLjava/lang/String;)J

    move-result-wide v6

    goto :goto_1

    .line 3145
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    throw v3

    :cond_4
    move v2, v4

    move-object v4, v5

    .line 3148
    goto :goto_2

    .line 3155
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

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1865
    const-string/jumbo v0, "RealmVideoDetails"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 1866
    const-string/jumbo v0, "RealmVideoDetails"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->create(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v8

    .line 1867
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

    .line 1868
    const-string/jumbo v0, "RealmPlayable"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1869
    invoke-static {p0}, Lio/realm/RealmPlayableRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    .line 1871
    :cond_0
    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "playable"

    sget-object v2, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    const-string/jumbo v3, "RealmPlayable"

    invoke-virtual {p0, v3}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;Lio/realm/RealmObjectSchema;)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 1872
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

    .line 1873
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

    .line 1874
    const-string/jumbo v0, "RealmSeason"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1875
    invoke-static {p0}, Lio/realm/RealmSeasonRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    .line 1877
    :cond_1
    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "seasonLabels"

    sget-object v2, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    const-string/jumbo v3, "RealmSeason"

    invoke-virtual {p0, v3}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;Lio/realm/RealmObjectSchema;)V

    invoke-virtual {v8, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 1878
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

    .line 1879
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

    .line 1880
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

    .line 1881
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

    .line 1882
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

    .line 1883
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

    .line 1884
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

    .line 1885
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

    .line 1886
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

    .line 1887
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

    .line 1888
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

    .line 1889
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

    .line 1890
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

    .line 1891
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

    .line 1892
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

    .line 1893
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

    .line 1894
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

    .line 1895
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

    .line 1896
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

    .line 1897
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

    .line 1898
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

    .line 1899
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

    .line 1900
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

    .line 1901
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

    .line 1902
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

    .line 1903
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

    .line 1904
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

    .line 1905
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

    .line 1906
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

    .line 1907
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

    .line 1908
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

    .line 1909
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

    .line 1910
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

    .line 1911
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

    .line 1912
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

    .line 1913
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

    .line 1914
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

    .line 1915
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

    .line 1916
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

    .line 1919
    :goto_6a
    return-object v0

    :cond_2
    move v5, v7

    .line 1867
    goto/16 :goto_0

    :cond_3
    move v3, v7

    .line 1872
    goto/16 :goto_1

    :cond_4
    move v4, v7

    goto/16 :goto_2

    :cond_5
    move v5, v7

    goto/16 :goto_3

    :cond_6
    move v3, v7

    .line 1873
    goto/16 :goto_4

    :cond_7
    move v4, v7

    goto/16 :goto_5

    :cond_8
    move v3, v7

    .line 1878
    goto/16 :goto_6

    :cond_9
    move v4, v7

    goto/16 :goto_7

    :cond_a
    move v3, v7

    .line 1879
    goto/16 :goto_8

    :cond_b
    move v4, v7

    goto/16 :goto_9

    :cond_c
    move v3, v7

    .line 1880
    goto/16 :goto_a

    :cond_d
    move v4, v7

    goto/16 :goto_b

    :cond_e
    move v3, v7

    .line 1881
    goto/16 :goto_c

    :cond_f
    move v4, v7

    goto/16 :goto_d

    :cond_10
    move v3, v7

    .line 1882
    goto/16 :goto_e

    :cond_11
    move v4, v7

    goto/16 :goto_f

    :cond_12
    move v5, v7

    goto/16 :goto_10

    :cond_13
    move v3, v7

    .line 1883
    goto/16 :goto_11

    :cond_14
    move v4, v7

    goto/16 :goto_12

    :cond_15
    move v5, v7

    goto/16 :goto_13

    :cond_16
    move v3, v7

    .line 1884
    goto/16 :goto_14

    :cond_17
    move v4, v7

    goto/16 :goto_15

    :cond_18
    move v5, v7

    goto/16 :goto_16

    :cond_19
    move v3, v7

    .line 1885
    goto/16 :goto_17

    :cond_1a
    move v4, v7

    goto/16 :goto_18

    :cond_1b
    move v5, v7

    goto/16 :goto_19

    :cond_1c
    move v3, v7

    .line 1886
    goto/16 :goto_1a

    :cond_1d
    move v4, v7

    goto/16 :goto_1b

    :cond_1e
    move v5, v7

    goto/16 :goto_1c

    :cond_1f
    move v3, v7

    .line 1887
    goto/16 :goto_1d

    :cond_20
    move v4, v7

    goto/16 :goto_1e

    :cond_21
    move v5, v7

    goto/16 :goto_1f

    :cond_22
    move v3, v7

    .line 1888
    goto/16 :goto_20

    :cond_23
    move v4, v7

    goto/16 :goto_21

    :cond_24
    move v5, v7

    goto/16 :goto_22

    :cond_25
    move v3, v7

    .line 1889
    goto/16 :goto_23

    :cond_26
    move v4, v7

    goto/16 :goto_24

    :cond_27
    move v5, v7

    goto/16 :goto_25

    :cond_28
    move v3, v7

    .line 1890
    goto/16 :goto_26

    :cond_29
    move v4, v7

    goto/16 :goto_27

    :cond_2a
    move v5, v7

    goto/16 :goto_28

    :cond_2b
    move v3, v7

    .line 1891
    goto/16 :goto_29

    :cond_2c
    move v4, v7

    goto/16 :goto_2a

    :cond_2d
    move v5, v7

    goto/16 :goto_2b

    :cond_2e
    move v3, v7

    .line 1892
    goto/16 :goto_2c

    :cond_2f
    move v4, v7

    goto/16 :goto_2d

    :cond_30
    move v5, v7

    goto/16 :goto_2e

    :cond_31
    move v3, v7

    .line 1893
    goto/16 :goto_2f

    :cond_32
    move v4, v7

    goto/16 :goto_30

    :cond_33
    move v5, v7

    goto/16 :goto_31

    :cond_34
    move v3, v7

    .line 1894
    goto/16 :goto_32

    :cond_35
    move v4, v7

    goto/16 :goto_33

    :cond_36
    move v5, v7

    goto/16 :goto_34

    :cond_37
    move v3, v7

    .line 1895
    goto/16 :goto_35

    :cond_38
    move v4, v7

    goto/16 :goto_36

    :cond_39
    move v5, v7

    goto/16 :goto_37

    :cond_3a
    move v3, v7

    .line 1896
    goto/16 :goto_38

    :cond_3b
    move v4, v7

    goto/16 :goto_39

    :cond_3c
    move v5, v7

    goto/16 :goto_3a

    :cond_3d
    move v3, v7

    .line 1897
    goto/16 :goto_3b

    :cond_3e
    move v4, v7

    goto/16 :goto_3c

    :cond_3f
    move v5, v7

    goto/16 :goto_3d

    :cond_40
    move v3, v7

    .line 1898
    goto/16 :goto_3e

    :cond_41
    move v4, v7

    goto/16 :goto_3f

    :cond_42
    move v5, v7

    goto/16 :goto_40

    :cond_43
    move v3, v7

    .line 1899
    goto/16 :goto_41

    :cond_44
    move v4, v7

    goto/16 :goto_42

    :cond_45
    move v5, v7

    goto/16 :goto_43

    :cond_46
    move v3, v7

    .line 1900
    goto/16 :goto_44

    :cond_47
    move v4, v7

    goto/16 :goto_45

    :cond_48
    move v5, v7

    goto/16 :goto_46

    :cond_49
    move v3, v7

    .line 1901
    goto/16 :goto_47

    :cond_4a
    move v4, v7

    goto/16 :goto_48

    :cond_4b
    move v5, v7

    goto/16 :goto_49

    :cond_4c
    move v3, v7

    .line 1902
    goto/16 :goto_4a

    :cond_4d
    move v4, v7

    goto/16 :goto_4b

    :cond_4e
    move v5, v7

    goto/16 :goto_4c

    :cond_4f
    move v3, v7

    .line 1903
    goto/16 :goto_4d

    :cond_50
    move v4, v7

    goto/16 :goto_4e

    :cond_51
    move v5, v7

    goto/16 :goto_4f

    :cond_52
    move v3, v7

    .line 1904
    goto/16 :goto_50

    :cond_53
    move v4, v7

    goto/16 :goto_51

    :cond_54
    move v3, v7

    .line 1905
    goto/16 :goto_52

    :cond_55
    move v4, v7

    goto/16 :goto_53

    :cond_56
    move v3, v7

    .line 1906
    goto/16 :goto_54

    :cond_57
    move v4, v7

    goto/16 :goto_55

    :cond_58
    move v3, v7

    .line 1907
    goto/16 :goto_56

    :cond_59
    move v4, v7

    goto/16 :goto_57

    :cond_5a
    move v3, v7

    .line 1908
    goto/16 :goto_58

    :cond_5b
    move v4, v7

    goto/16 :goto_59

    :cond_5c
    move v3, v7

    .line 1909
    goto/16 :goto_5a

    :cond_5d
    move v4, v7

    goto/16 :goto_5b

    :cond_5e
    move v3, v7

    .line 1910
    goto/16 :goto_5c

    :cond_5f
    move v4, v7

    goto/16 :goto_5d

    :cond_60
    move v3, v7

    .line 1911
    goto/16 :goto_5e

    :cond_61
    move v4, v7

    goto/16 :goto_5f

    :cond_62
    move v3, v7

    .line 1912
    goto/16 :goto_60

    :cond_63
    move v4, v7

    goto/16 :goto_61

    :cond_64
    move v3, v7

    .line 1913
    goto/16 :goto_62

    :cond_65
    move v4, v7

    goto/16 :goto_63

    :cond_66
    move v3, v7

    .line 1914
    goto/16 :goto_64

    :cond_67
    move v4, v7

    goto/16 :goto_65

    :cond_68
    move v3, v7

    .line 1915
    goto/16 :goto_66

    :cond_69
    move v4, v7

    goto/16 :goto_67

    :cond_6a
    move v3, v7

    .line 1916
    goto/16 :goto_68

    :cond_6b
    move v4, v7

    goto/16 :goto_69

    .line 1919
    :cond_6c
    const-string/jumbo v0, "RealmVideoDetails"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    goto/16 :goto_6a
.end method

.method public static getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2420
    const-string/jumbo v0, "class_RealmVideoDetails"

    return-object v0
.end method

.method public static initTable(Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1923
    const-string/jumbo v0, "class_RealmVideoDetails"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1924
    const-string/jumbo v0, "class_RealmVideoDetails"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 1925
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "id"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1926
    const-string/jumbo v1, "class_RealmPlayable"

    invoke-virtual {p0, v1}, Lio/realm/internal/SharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1927
    invoke-static {p0}, Lio/realm/RealmPlayableRealmProxy;->initTable(Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;

    .line 1929
    :cond_0
    sget-object v1, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "playable"

    const-string/jumbo v3, "class_RealmPlayable"

    invoke-virtual {p0, v3}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumnLink(Lio/realm/RealmFieldType;Ljava/lang/String;Lio/realm/internal/Table;)J

    .line 1930
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "profileId"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1931
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "seasonNumber"

    invoke-virtual {v0, v1, v2, v5}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1932
    const-string/jumbo v1, "class_RealmSeason"

    invoke-virtual {p0, v1}, Lio/realm/internal/SharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1933
    invoke-static {p0}, Lio/realm/RealmSeasonRealmProxy;->initTable(Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;

    .line 1935
    :cond_1
    sget-object v1, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "seasonLabels"

    const-string/jumbo v3, "class_RealmSeason"

    invoke-virtual {p0, v3}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumnLink(Lio/realm/RealmFieldType;Ljava/lang/String;Lio/realm/internal/Table;)J

    .line 1936
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "errorType"

    invoke-virtual {v0, v1, v2, v5}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1937
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "videoType"

    invoke-virtual {v0, v1, v2, v5}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1938
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "year"

    invoke-virtual {v0, v1, v2, v5}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1939
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "maturityLevel"

    invoke-virtual {v0, v1, v2, v5}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1940
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "synopsis"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1941
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "quality"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1942
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "actors"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1943
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "genres"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1944
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "cert"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1945
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "supplMessage"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1946
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "defaultTrailer"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1947
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "copyright"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1948
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "hResPortBoxArtUrl"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1949
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "hResLandBoxArtUrl"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1950
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "boxshotUrl"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1951
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "boxartImageId"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1952
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "horzDispUrl"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1953
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "horzDispSmallUrl"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1954
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "storyDispUrl"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1955
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "tvCardUrl"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1956
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "storyUrl"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1957
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "bifUrl"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1958
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "catalogIdUrl"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1959
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "titleImgUrl"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1960
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "titleCroppedImgUrl"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1961
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1962
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "isOriginal"

    invoke-virtual {v0, v1, v2, v5}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1963
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "isPreRelease"

    invoke-virtual {v0, v1, v2, v5}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1964
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "hasWatched"

    invoke-virtual {v0, v1, v2, v5}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1965
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "hasTrailers"

    invoke-virtual {v0, v1, v2, v5}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1966
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "isInQueue"

    invoke-virtual {v0, v1, v2, v5}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1967
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "isVideoHd"

    invoke-virtual {v0, v1, v2, v5}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1968
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "isVideoUhd"

    invoke-virtual {v0, v1, v2, v5}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1969
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "isVideo3D"

    invoke-virtual {v0, v1, v2, v5}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1970
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "isVideo5dot1"

    invoke-virtual {v0, v1, v2, v5}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1971
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "isVideoHdr10"

    invoke-virtual {v0, v1, v2, v5}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1972
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "isVideoDolbyVision"

    invoke-virtual {v0, v1, v2, v5}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1973
    sget-object v1, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "userRating"

    invoke-virtual {v0, v1, v2, v5}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1974
    sget-object v1, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "predictedRating"

    invoke-virtual {v0, v1, v2, v5}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 1975
    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->addSearchIndex(J)V

    .line 1976
    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->setPrimaryKey(Ljava/lang/String;)V

    .line 1979
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

    .prologue
    .line 295
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 296
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iput-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    .line 297
    new-instance v1, Lio/realm/ProxyState;

    const-class v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-direct {v1, v2, p0}, Lio/realm/ProxyState;-><init>(Ljava/lang/Class;Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 298
    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 299
    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 300
    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 301
    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    .line 302
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

    .prologue
    const/4 v4, 0x1

    .line 4056
    move-object v0, p2

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v0}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$playable()Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    move-result-object v1

    .line 4057
    if-eqz v1, :cond_1

    .line 4058
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    .line 4059
    if-eqz v0, :cond_0

    move-object v1, p1

    .line 4060
    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1, v0}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$playable(Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;)V

    :goto_0
    move-object v0, p1

    .line 4067
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$profileId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$profileId(Ljava/lang/String;)V

    move-object v0, p1

    .line 4068
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$seasonNumber()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$seasonNumber(I)V

    move-object v0, p2

    .line 4069
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v0}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$seasonLabels()Lio/realm/RealmList;

    move-result-object v2

    move-object v0, p1

    .line 4070
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v0}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$seasonLabels()Lio/realm/RealmList;

    move-result-object v3

    .line 4071
    invoke-virtual {v3}, Lio/realm/RealmList;->clear()V

    .line 4072
    if-eqz v2, :cond_3

    .line 4073
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v2}, Lio/realm/RealmList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 4074
    invoke-virtual {v2, v1}, Lio/realm/RealmList;->get(I)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;

    .line 4075
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;

    .line 4076
    if-eqz v0, :cond_2

    .line 4077
    invoke-virtual {v3, v0}, Lio/realm/RealmList;->add(Lio/realm/RealmModel;)Z

    .line 4073
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    move-object v0, p1

    .line 4062
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-static {p0, v1, v4, p3}, Lio/realm/RealmPlayableRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;ZLjava/util/Map;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$playable(Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 4065
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$playable(Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;)V

    goto :goto_0

    .line 4079
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

    .line 4083
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$errorType()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$errorType(I)V

    move-object v0, p1

    .line 4084
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$videoType()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$videoType(I)V

    move-object v0, p1

    .line 4085
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$year()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$year(I)V

    move-object v0, p1

    .line 4086
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$maturityLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$maturityLevel(I)V

    move-object v0, p1

    .line 4087
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$synopsis()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$synopsis(Ljava/lang/String;)V

    move-object v0, p1

    .line 4088
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$quality()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$quality(Ljava/lang/String;)V

    move-object v0, p1

    .line 4089
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$actors()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$actors(Ljava/lang/String;)V

    move-object v0, p1

    .line 4090
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$genres()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$genres(Ljava/lang/String;)V

    move-object v0, p1

    .line 4091
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$cert()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$cert(Ljava/lang/String;)V

    move-object v0, p1

    .line 4092
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$supplMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$supplMessage(Ljava/lang/String;)V

    move-object v0, p1

    .line 4093
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$defaultTrailer()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$defaultTrailer(Ljava/lang/String;)V

    move-object v0, p1

    .line 4094
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$copyright()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$copyright(Ljava/lang/String;)V

    move-object v0, p1

    .line 4095
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$hResPortBoxArtUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$hResPortBoxArtUrl(Ljava/lang/String;)V

    move-object v0, p1

    .line 4096
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$hResLandBoxArtUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$hResLandBoxArtUrl(Ljava/lang/String;)V

    move-object v0, p1

    .line 4097
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$boxshotUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$boxshotUrl(Ljava/lang/String;)V

    move-object v0, p1

    .line 4098
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$boxartImageId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$boxartImageId(Ljava/lang/String;)V

    move-object v0, p1

    .line 4099
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$horzDispUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$horzDispUrl(Ljava/lang/String;)V

    move-object v0, p1

    .line 4100
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$horzDispSmallUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$horzDispSmallUrl(Ljava/lang/String;)V

    move-object v0, p1

    .line 4101
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$storyDispUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$storyDispUrl(Ljava/lang/String;)V

    move-object v0, p1

    .line 4102
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$tvCardUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$tvCardUrl(Ljava/lang/String;)V

    move-object v0, p1

    .line 4103
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$storyUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$storyUrl(Ljava/lang/String;)V

    move-object v0, p1

    .line 4104
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$bifUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$bifUrl(Ljava/lang/String;)V

    move-object v0, p1

    .line 4105
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$catalogIdUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$catalogIdUrl(Ljava/lang/String;)V

    move-object v0, p1

    .line 4106
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$titleImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$titleImgUrl(Ljava/lang/String;)V

    move-object v0, p1

    .line 4107
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$titleCroppedImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$titleCroppedImgUrl(Ljava/lang/String;)V

    move-object v0, p1

    .line 4108
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    move-object v0, p1

    .line 4109
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$isOriginal()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$isOriginal(Z)V

    move-object v0, p1

    .line 4110
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$isPreRelease()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$isPreRelease(Z)V

    move-object v0, p1

    .line 4111
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$hasWatched()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$hasWatched(Z)V

    move-object v0, p1

    .line 4112
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$hasTrailers()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$hasTrailers(Z)V

    move-object v0, p1

    .line 4113
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$isInQueue()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$isInQueue(Z)V

    move-object v0, p1

    .line 4114
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$isVideoHd()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$isVideoHd(Z)V

    move-object v0, p1

    .line 4115
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$isVideoUhd()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$isVideoUhd(Z)V

    move-object v0, p1

    .line 4116
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$isVideo3D()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$isVideo3D(Z)V

    move-object v0, p1

    .line 4117
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$isVideo5dot1()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$isVideo5dot1(Z)V

    move-object v0, p1

    .line 4118
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$isVideoHdr10()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$isVideoHdr10(Z)V

    move-object v0, p1

    .line 4119
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$isVideoDolbyVision()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$isVideoDolbyVision(Z)V

    move-object v0, p1

    .line 4120
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$userRating()F

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$userRating(F)V

    move-object v0, p1

    .line 4121
    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    check-cast p2, Lio/realm/RealmVideoDetailsRealmProxyInterface;

    invoke-interface {p2}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmGet$predictedRating()F

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/RealmVideoDetailsRealmProxyInterface;->realmSet$predictedRating(F)V

    .line 4122
    return-object p1
.end method

.method public static validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;
    .locals 8

    .prologue
    const-wide/16 v6, 0x2c

    .line 1983
    const-string/jumbo v0, "class_RealmVideoDetails"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 1984
    const-string/jumbo v0, "class_RealmVideoDetails"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v2

    .line 1985
    invoke-virtual {v2}, Lio/realm/internal/Table;->getColumnCount()J

    move-result-wide v0

    .line 1986
    cmp-long v3, v0, v6

    if-eqz v3, :cond_1

    .line 1987
    cmp-long v3, v0, v6

    if-gez v3, :cond_0

    .line 1988
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

    .line 1990
    :cond_0
    if-eqz p1, :cond_2

    .line 1991
    const-string/jumbo v3, "Field count is more than expected - expected 44 but was %1$d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1996
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1997
    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v4, v0, v6

    if-gez v4, :cond_3

    .line 1998
    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->getColumnName(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1997
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_0

    .line 1993
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

    .line 2001
    :cond_3
    new-instance v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;-><init>(Ljava/lang/String;Lio/realm/internal/Table;)V

    .line 2003
    const-string/jumbo v1, "id"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2004
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'id\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2006
    :cond_4
    const-string/jumbo v1, "id"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_5

    .line 2007
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'id\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2009
    :cond_5
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->idIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2010
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "@PrimaryKey field \'id\' does not support null values in the existing Realm file. Migrate using RealmObjectSchema.setNullable(), or mark the field as @Required."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2012
    :cond_6
    invoke-virtual {v2}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v4

    const-string/jumbo v1, "id"

    invoke-virtual {v2, v1}, Lio/realm/internal/Table;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_7

    .line 2013
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Primary key not defined for field \'id\' in existing Realm file. Add @PrimaryKey."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2015
    :cond_7
    const-string/jumbo v1, "id"

    invoke-virtual {v2, v1}, Lio/realm/internal/Table;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->hasSearchIndex(J)Z

    move-result v1

    if-nez v1, :cond_8

    .line 2016
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Index not defined for field \'id\' in existing Realm file. Either set @Index or migrate using io.realm.internal.Table.removeSearchIndex()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2018
    :cond_8
    const-string/jumbo v1, "playable"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 2019
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'playable\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2021
    :cond_9
    const-string/jumbo v1, "playable"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_a

    .line 2022
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'RealmPlayable\' for field \'playable\'"

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2024
    :cond_a
    const-string/jumbo v1, "class_RealmPlayable"

    invoke-virtual {p0, v1}, Lio/realm/internal/SharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 2025
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing class \'class_RealmPlayable\' for field \'playable\'"

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2027
    :cond_b
    const-string/jumbo v1, "class_RealmPlayable"

    invoke-virtual {p0, v1}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v1

    .line 2028
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->playableIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->getLinkTarget(J)Lio/realm/internal/Table;

    move-result-object v4

    invoke-virtual {v4, v1}, Lio/realm/internal/Table;->hasSameSchema(Lio/realm/internal/Table;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 2029
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

    .line 2031
    :cond_c
    const-string/jumbo v1, "profileId"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 2032
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'profileId\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2034
    :cond_d
    const-string/jumbo v1, "profileId"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_e

    .line 2035
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'profileId\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2037
    :cond_e
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->profileIdIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_f

    .line 2038
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'profileId\' is required. Either set @Required to field \'profileId\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2040
    :cond_f
    const-string/jumbo v1, "seasonNumber"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 2041
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'seasonNumber\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2043
    :cond_10
    const-string/jumbo v1, "seasonNumber"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_11

    .line 2044
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'int\' for field \'seasonNumber\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2046
    :cond_11
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->seasonNumberIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2047
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'seasonNumber\' does support null values in the existing Realm file. Use corresponding boxed type for field \'seasonNumber\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2049
    :cond_12
    const-string/jumbo v1, "seasonLabels"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 2050
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'seasonLabels\'"

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2052
    :cond_13
    const-string/jumbo v1, "seasonLabels"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_14

    .line 2053
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'RealmSeason\' for field \'seasonLabels\'"

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2055
    :cond_14
    const-string/jumbo v1, "class_RealmSeason"

    invoke-virtual {p0, v1}, Lio/realm/internal/SharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 2056
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing class \'class_RealmSeason\' for field \'seasonLabels\'"

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2058
    :cond_15
    const-string/jumbo v1, "class_RealmSeason"

    invoke-virtual {p0, v1}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v1

    .line 2059
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->seasonLabelsIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->getLinkTarget(J)Lio/realm/internal/Table;

    move-result-object v4

    invoke-virtual {v4, v1}, Lio/realm/internal/Table;->hasSameSchema(Lio/realm/internal/Table;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 2060
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

    .line 2062
    :cond_16
    const-string/jumbo v1, "errorType"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 2063
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'errorType\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2065
    :cond_17
    const-string/jumbo v1, "errorType"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_18

    .line 2066
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'int\' for field \'errorType\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2068
    :cond_18
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->errorTypeIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2069
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'errorType\' does support null values in the existing Realm file. Use corresponding boxed type for field \'errorType\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2071
    :cond_19
    const-string/jumbo v1, "videoType"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 2072
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'videoType\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2074
    :cond_1a
    const-string/jumbo v1, "videoType"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_1b

    .line 2075
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'int\' for field \'videoType\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2077
    :cond_1b
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->videoTypeIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2078
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'videoType\' does support null values in the existing Realm file. Use corresponding boxed type for field \'videoType\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2080
    :cond_1c
    const-string/jumbo v1, "year"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 2081
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'year\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2083
    :cond_1d
    const-string/jumbo v1, "year"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_1e

    .line 2084
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'int\' for field \'year\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2086
    :cond_1e
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->yearIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2087
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'year\' does support null values in the existing Realm file. Use corresponding boxed type for field \'year\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2089
    :cond_1f
    const-string/jumbo v1, "maturityLevel"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 2090
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'maturityLevel\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2092
    :cond_20
    const-string/jumbo v1, "maturityLevel"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_21

    .line 2093
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'int\' for field \'maturityLevel\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2095
    :cond_21
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->maturityLevelIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 2096
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'maturityLevel\' does support null values in the existing Realm file. Use corresponding boxed type for field \'maturityLevel\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2098
    :cond_22
    const-string/jumbo v1, "synopsis"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 2099
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'synopsis\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2101
    :cond_23
    const-string/jumbo v1, "synopsis"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_24

    .line 2102
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'synopsis\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2104
    :cond_24
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->synopsisIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_25

    .line 2105
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'synopsis\' is required. Either set @Required to field \'synopsis\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2107
    :cond_25
    const-string/jumbo v1, "quality"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 2108
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'quality\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2110
    :cond_26
    const-string/jumbo v1, "quality"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_27

    .line 2111
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'quality\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2113
    :cond_27
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->qualityIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_28

    .line 2114
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'quality\' is required. Either set @Required to field \'quality\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2116
    :cond_28
    const-string/jumbo v1, "actors"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 2117
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'actors\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2119
    :cond_29
    const-string/jumbo v1, "actors"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_2a

    .line 2120
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'actors\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2122
    :cond_2a
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->actorsIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 2123
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'actors\' is required. Either set @Required to field \'actors\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2125
    :cond_2b
    const-string/jumbo v1, "genres"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 2126
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'genres\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2128
    :cond_2c
    const-string/jumbo v1, "genres"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_2d

    .line 2129
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'genres\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2131
    :cond_2d
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->genresIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 2132
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'genres\' is required. Either set @Required to field \'genres\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2134
    :cond_2e
    const-string/jumbo v1, "cert"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 2135
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'cert\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2137
    :cond_2f
    const-string/jumbo v1, "cert"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_30

    .line 2138
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'cert\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2140
    :cond_30
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->certIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_31

    .line 2141
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'cert\' is required. Either set @Required to field \'cert\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2143
    :cond_31
    const-string/jumbo v1, "supplMessage"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 2144
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'supplMessage\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2146
    :cond_32
    const-string/jumbo v1, "supplMessage"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_33

    .line 2147
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'supplMessage\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2149
    :cond_33
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->supplMessageIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_34

    .line 2150
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'supplMessage\' is required. Either set @Required to field \'supplMessage\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2152
    :cond_34
    const-string/jumbo v1, "defaultTrailer"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 2153
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'defaultTrailer\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2155
    :cond_35
    const-string/jumbo v1, "defaultTrailer"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_36

    .line 2156
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'defaultTrailer\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2158
    :cond_36
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->defaultTrailerIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_37

    .line 2159
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'defaultTrailer\' is required. Either set @Required to field \'defaultTrailer\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2161
    :cond_37
    const-string/jumbo v1, "copyright"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 2162
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'copyright\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2164
    :cond_38
    const-string/jumbo v1, "copyright"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_39

    .line 2165
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'copyright\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2167
    :cond_39
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->copyrightIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 2168
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'copyright\' is required. Either set @Required to field \'copyright\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2170
    :cond_3a
    const-string/jumbo v1, "hResPortBoxArtUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 2171
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'hResPortBoxArtUrl\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2173
    :cond_3b
    const-string/jumbo v1, "hResPortBoxArtUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_3c

    .line 2174
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'hResPortBoxArtUrl\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2176
    :cond_3c
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hResPortBoxArtUrlIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 2177
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'hResPortBoxArtUrl\' is required. Either set @Required to field \'hResPortBoxArtUrl\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2179
    :cond_3d
    const-string/jumbo v1, "hResLandBoxArtUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 2180
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'hResLandBoxArtUrl\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2182
    :cond_3e
    const-string/jumbo v1, "hResLandBoxArtUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_3f

    .line 2183
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'hResLandBoxArtUrl\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2185
    :cond_3f
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hResLandBoxArtUrlIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_40

    .line 2186
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'hResLandBoxArtUrl\' is required. Either set @Required to field \'hResLandBoxArtUrl\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2188
    :cond_40
    const-string/jumbo v1, "boxshotUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 2189
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'boxshotUrl\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2191
    :cond_41
    const-string/jumbo v1, "boxshotUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_42

    .line 2192
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'boxshotUrl\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2194
    :cond_42
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->boxshotUrlIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_43

    .line 2195
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'boxshotUrl\' is required. Either set @Required to field \'boxshotUrl\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2197
    :cond_43
    const-string/jumbo v1, "boxartImageId"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 2198
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'boxartImageId\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2200
    :cond_44
    const-string/jumbo v1, "boxartImageId"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_45

    .line 2201
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'boxartImageId\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2203
    :cond_45
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->boxartImageIdIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_46

    .line 2204
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'boxartImageId\' is required. Either set @Required to field \'boxartImageId\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2206
    :cond_46
    const-string/jumbo v1, "horzDispUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 2207
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'horzDispUrl\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2209
    :cond_47
    const-string/jumbo v1, "horzDispUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_48

    .line 2210
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'horzDispUrl\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2212
    :cond_48
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->horzDispUrlIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_49

    .line 2213
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'horzDispUrl\' is required. Either set @Required to field \'horzDispUrl\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2215
    :cond_49
    const-string/jumbo v1, "horzDispSmallUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 2216
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'horzDispSmallUrl\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2218
    :cond_4a
    const-string/jumbo v1, "horzDispSmallUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_4b

    .line 2219
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'horzDispSmallUrl\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2221
    :cond_4b
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->horzDispSmallUrlIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 2222
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'horzDispSmallUrl\' is required. Either set @Required to field \'horzDispSmallUrl\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2224
    :cond_4c
    const-string/jumbo v1, "storyDispUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 2225
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'storyDispUrl\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2227
    :cond_4d
    const-string/jumbo v1, "storyDispUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_4e

    .line 2228
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'storyDispUrl\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2230
    :cond_4e
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->storyDispUrlIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 2231
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'storyDispUrl\' is required. Either set @Required to field \'storyDispUrl\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2233
    :cond_4f
    const-string/jumbo v1, "tvCardUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    .line 2234
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'tvCardUrl\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2236
    :cond_50
    const-string/jumbo v1, "tvCardUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_51

    .line 2237
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'tvCardUrl\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2239
    :cond_51
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->tvCardUrlIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_52

    .line 2240
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'tvCardUrl\' is required. Either set @Required to field \'tvCardUrl\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2242
    :cond_52
    const-string/jumbo v1, "storyUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 2243
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'storyUrl\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2245
    :cond_53
    const-string/jumbo v1, "storyUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_54

    .line 2246
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'storyUrl\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2248
    :cond_54
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->storyUrlIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_55

    .line 2249
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'storyUrl\' is required. Either set @Required to field \'storyUrl\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2251
    :cond_55
    const-string/jumbo v1, "bifUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 2252
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'bifUrl\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2254
    :cond_56
    const-string/jumbo v1, "bifUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_57

    .line 2255
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'bifUrl\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2257
    :cond_57
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->bifUrlIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_58

    .line 2258
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'bifUrl\' is required. Either set @Required to field \'bifUrl\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2260
    :cond_58
    const-string/jumbo v1, "catalogIdUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    .line 2261
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'catalogIdUrl\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2263
    :cond_59
    const-string/jumbo v1, "catalogIdUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_5a

    .line 2264
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'catalogIdUrl\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2266
    :cond_5a
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->catalogIdUrlIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_5b

    .line 2267
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'catalogIdUrl\' is required. Either set @Required to field \'catalogIdUrl\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2269
    :cond_5b
    const-string/jumbo v1, "titleImgUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 2270
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'titleImgUrl\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2272
    :cond_5c
    const-string/jumbo v1, "titleImgUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_5d

    .line 2273
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'titleImgUrl\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2275
    :cond_5d
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->titleImgUrlIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 2276
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'titleImgUrl\' is required. Either set @Required to field \'titleImgUrl\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2278
    :cond_5e
    const-string/jumbo v1, "titleCroppedImgUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    .line 2279
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'titleCroppedImgUrl\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2281
    :cond_5f
    const-string/jumbo v1, "titleCroppedImgUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_60

    .line 2282
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'titleCroppedImgUrl\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2284
    :cond_60
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->titleCroppedImgUrlIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_61

    .line 2285
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'titleCroppedImgUrl\' is required. Either set @Required to field \'titleCroppedImgUrl\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2287
    :cond_61
    const-string/jumbo v1, "title"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 2288
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'title\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2290
    :cond_62
    const-string/jumbo v1, "title"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_63

    .line 2291
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'title\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2293
    :cond_63
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->titleIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_64

    .line 2294
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'title\' is required. Either set @Required to field \'title\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2296
    :cond_64
    const-string/jumbo v1, "isOriginal"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 2297
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'isOriginal\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2299
    :cond_65
    const-string/jumbo v1, "isOriginal"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_66

    .line 2300
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'isOriginal\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2302
    :cond_66
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isOriginalIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 2303
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'isOriginal\' does support null values in the existing Realm file. Use corresponding boxed type for field \'isOriginal\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2305
    :cond_67
    const-string/jumbo v1, "isPreRelease"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_68

    .line 2306
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'isPreRelease\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2308
    :cond_68
    const-string/jumbo v1, "isPreRelease"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_69

    .line 2309
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'isPreRelease\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2311
    :cond_69
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isPreReleaseIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 2312
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'isPreRelease\' does support null values in the existing Realm file. Use corresponding boxed type for field \'isPreRelease\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2314
    :cond_6a
    const-string/jumbo v1, "hasWatched"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6b

    .line 2315
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'hasWatched\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2317
    :cond_6b
    const-string/jumbo v1, "hasWatched"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_6c

    .line 2318
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'hasWatched\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2320
    :cond_6c
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hasWatchedIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 2321
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'hasWatched\' does support null values in the existing Realm file. Use corresponding boxed type for field \'hasWatched\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2323
    :cond_6d
    const-string/jumbo v1, "hasTrailers"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    .line 2324
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'hasTrailers\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2326
    :cond_6e
    const-string/jumbo v1, "hasTrailers"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_6f

    .line 2327
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'hasTrailers\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2329
    :cond_6f
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hasTrailersIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 2330
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'hasTrailers\' does support null values in the existing Realm file. Use corresponding boxed type for field \'hasTrailers\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2332
    :cond_70
    const-string/jumbo v1, "isInQueue"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    .line 2333
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'isInQueue\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2335
    :cond_71
    const-string/jumbo v1, "isInQueue"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_72

    .line 2336
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'isInQueue\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2338
    :cond_72
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isInQueueIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 2339
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'isInQueue\' does support null values in the existing Realm file. Use corresponding boxed type for field \'isInQueue\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2341
    :cond_73
    const-string/jumbo v1, "isVideoHd"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_74

    .line 2342
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'isVideoHd\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2344
    :cond_74
    const-string/jumbo v1, "isVideoHd"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_75

    .line 2345
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'isVideoHd\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2347
    :cond_75
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideoHdIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 2348
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'isVideoHd\' does support null values in the existing Realm file. Use corresponding boxed type for field \'isVideoHd\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2350
    :cond_76
    const-string/jumbo v1, "isVideoUhd"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_77

    .line 2351
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'isVideoUhd\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2353
    :cond_77
    const-string/jumbo v1, "isVideoUhd"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_78

    .line 2354
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'isVideoUhd\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2356
    :cond_78
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideoUhdIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 2357
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'isVideoUhd\' does support null values in the existing Realm file. Use corresponding boxed type for field \'isVideoUhd\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2359
    :cond_79
    const-string/jumbo v1, "isVideo3D"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7a

    .line 2360
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'isVideo3D\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2362
    :cond_7a
    const-string/jumbo v1, "isVideo3D"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_7b

    .line 2363
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'isVideo3D\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2365
    :cond_7b
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideo3DIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 2366
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'isVideo3D\' does support null values in the existing Realm file. Use corresponding boxed type for field \'isVideo3D\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2368
    :cond_7c
    const-string/jumbo v1, "isVideo5dot1"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7d

    .line 2369
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'isVideo5dot1\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2371
    :cond_7d
    const-string/jumbo v1, "isVideo5dot1"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_7e

    .line 2372
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'isVideo5dot1\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2374
    :cond_7e
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideo5dot1Index:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 2375
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'isVideo5dot1\' does support null values in the existing Realm file. Use corresponding boxed type for field \'isVideo5dot1\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2377
    :cond_7f
    const-string/jumbo v1, "isVideoHdr10"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_80

    .line 2378
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'isVideoHdr10\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2380
    :cond_80
    const-string/jumbo v1, "isVideoHdr10"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_81

    .line 2381
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'isVideoHdr10\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2383
    :cond_81
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideoHdr10Index:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 2384
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'isVideoHdr10\' does support null values in the existing Realm file. Use corresponding boxed type for field \'isVideoHdr10\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2386
    :cond_82
    const-string/jumbo v1, "isVideoDolbyVision"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_83

    .line 2387
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'isVideoDolbyVision\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2389
    :cond_83
    const-string/jumbo v1, "isVideoDolbyVision"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_84

    .line 2390
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'isVideoDolbyVision\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2392
    :cond_84
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideoDolbyVisionIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 2393
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'isVideoDolbyVision\' does support null values in the existing Realm file. Use corresponding boxed type for field \'isVideoDolbyVision\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2395
    :cond_85
    const-string/jumbo v1, "userRating"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_86

    .line 2396
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'userRating\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2398
    :cond_86
    const-string/jumbo v1, "userRating"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_87

    .line 2399
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'float\' for field \'userRating\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2401
    :cond_87
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->userRatingIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 2402
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'userRating\' does support null values in the existing Realm file. Use corresponding boxed type for field \'userRating\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2404
    :cond_88
    const-string/jumbo v1, "predictedRating"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_89

    .line 2405
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'predictedRating\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2407
    :cond_89
    const-string/jumbo v1, "predictedRating"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    if-eq v1, v3, :cond_8a

    .line 2408
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'float\' for field \'predictedRating\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2410
    :cond_8a
    iget-wide v4, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->predictedRatingIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 2411
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'predictedRating\' does support null values in the existing Realm file. Use corresponding boxed type for field \'predictedRating\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2415
    :cond_8b
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "The \'RealmVideoDetails\' class is missing from the schema for this Realm."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2413
    :cond_8c
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4145
    if-ne p0, p1, :cond_1

    .line 4159
    :cond_0
    :goto_0
    return v0

    .line 4146
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

    .line 4147
    :cond_3
    check-cast p1, Lio/realm/RealmVideoDetailsRealmProxy;

    .line 4149
    iget-object v2, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 4150
    iget-object v3, p1, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 4151
    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    if-nez v3, :cond_4

    .line 4153
    :cond_6
    iget-object v2, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4154
    iget-object v3, p1, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v3

    .line 4155
    if-eqz v2, :cond_8

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    if-nez v3, :cond_7

    .line 4157
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

    .prologue
    const/4 v0, 0x0

    .line 4132
    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 4133
    iget-object v2, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4134
    iget-object v3, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    .line 4137
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit16 v1, v1, 0x20f

    .line 4138
    mul-int/lit8 v1, v1, 0x1f

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_0
    add-int/2addr v0, v1

    .line 4139
    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v2, v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 4140
    return v0

    :cond_1
    move v1, v0

    .line 4137
    goto :goto_0
.end method

.method public realmGet$actors()Ljava/lang/String;
    .locals 4

    .prologue
    .line 716
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 718
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 721
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 722
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

    .prologue
    .line 1286
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1288
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1291
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1292
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

    .prologue
    .line 1058
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1060
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1063
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1064
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

    .prologue
    .line 1020
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1022
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1025
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1026
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

    .prologue
    .line 1324
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1326
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1329
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1330
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

    .prologue
    .line 792
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 794
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 797
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 798
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

    .prologue
    .line 906
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 908
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 911
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 912
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

    .prologue
    .line 868
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 870
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 873
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 874
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

    .prologue
    .line 520
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 522
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 525
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 526
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

    .prologue
    .line 754
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 756
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 759
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 760
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

    .prologue
    .line 982
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 984
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 987
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 988
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

    .prologue
    .line 944
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 946
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 949
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 950
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

    .prologue
    .line 1566
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1568
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1571
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1572
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

    .prologue
    .line 1536
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1538
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1541
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1542
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

    .prologue
    .line 1134
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1136
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1139
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1140
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

    .prologue
    .line 1096
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1098
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1101
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1102
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

    .prologue
    .line 306
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 308
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 311
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 312
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

    .prologue
    .line 1596
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1598
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1601
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1602
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

    .prologue
    .line 1476
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1478
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1481
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1482
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

    .prologue
    .line 1506
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1508
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1511
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1512
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

    .prologue
    .line 1686
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1688
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1691
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1692
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

    .prologue
    .line 1716
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1718
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1721
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1722
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

    .prologue
    .line 1776
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1778
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1781
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1782
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

    .prologue
    .line 1626
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1628
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1631
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1632
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

    .prologue
    .line 1746
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1748
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1751
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1752
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

    .prologue
    .line 1656
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1658
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1661
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1662
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

    .prologue
    .line 610
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 612
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 615
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 616
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

    .prologue
    .line 331
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 333
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 336
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 337
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->playableIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->isNullLink(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    const/4 v0, 0x0

    .line 340
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

    .prologue
    .line 1836
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1838
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1841
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1842
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

    .prologue
    .line 391
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 393
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 396
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 397
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

    .prologue
    .line 4127
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$quality()Ljava/lang/String;
    .locals 4

    .prologue
    .line 678
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 680
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 683
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 684
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

    .prologue
    .line 458
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 460
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 463
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 465
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->seasonLabelsRealmList:Lio/realm/RealmList;

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->seasonLabelsRealmList:Lio/realm/RealmList;

    .line 470
    :goto_0
    return-object v0

    .line 468
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->seasonLabelsIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getLinkList(J)Lio/realm/internal/LinkView;

    move-result-object v0

    .line 469
    new-instance v1, Lio/realm/RealmList;

    const-class v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;

    iget-object v3, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lio/realm/RealmList;-><init>(Ljava/lang/Class;Lio/realm/internal/LinkView;Lio/realm/BaseRealm;)V

    iput-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->seasonLabelsRealmList:Lio/realm/RealmList;

    .line 470
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->seasonLabelsRealmList:Lio/realm/RealmList;

    goto :goto_0
.end method

.method public realmGet$seasonNumber()I
    .locals 4

    .prologue
    .line 429
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 431
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 434
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 435
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

    .prologue
    .line 1172
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1174
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1177
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1178
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

    .prologue
    .line 1248
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1250
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1253
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1254
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

    .prologue
    .line 830
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 832
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 835
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 836
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

    .prologue
    .line 640
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 642
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 645
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 646
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

    .prologue
    .line 1438
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1440
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1443
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1444
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

    .prologue
    .line 1400
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1402
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1405
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1406
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

    .prologue
    .line 1362
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1364
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1367
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1368
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

    .prologue
    .line 1210
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1212
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1215
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1216
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

    .prologue
    .line 1806
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1808
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1811
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1812
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

    .prologue
    .line 550
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 552
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 555
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 556
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

    .prologue
    .line 580
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 582
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 585
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 586
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

    .prologue
    const/4 v6, 0x1

    .line 726
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 728
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 731
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 732
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 750
    :goto_0
    return-void

    .line 735
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    .line 736
    if-nez p1, :cond_2

    .line 737
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->actorsIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    .line 740
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

    .line 744
    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 745
    if-nez p1, :cond_4

    .line 746
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->actorsIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    .line 749
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

    .prologue
    const/4 v6, 0x1

    .line 1296
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1298
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1301
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1302
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1320
    :goto_0
    return-void

    .line 1305
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    .line 1306
    if-nez p1, :cond_2

    .line 1307
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->bifUrlIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    .line 1310
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

    .line 1314
    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1315
    if-nez p1, :cond_4

    .line 1316
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->bifUrlIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    .line 1319
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

    .prologue
    const/4 v6, 0x1

    .line 1068
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1070
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1073
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1074
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1092
    :goto_0
    return-void

    .line 1077
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    .line 1078
    if-nez p1, :cond_2

    .line 1079
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->boxartImageIdIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    .line 1082
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

    .line 1086
    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1087
    if-nez p1, :cond_4

    .line 1088
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->boxartImageIdIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    .line 1091
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

    .prologue
    const/4 v6, 0x1

    .line 1030
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1032
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1035
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1036
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1054
    :goto_0
    return-void

    .line 1039
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    .line 1040
    if-nez p1, :cond_2

    .line 1041
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->boxshotUrlIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    .line 1044
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

    .line 1048
    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1049
    if-nez p1, :cond_4

    .line 1050
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->boxshotUrlIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    .line 1053
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

    .prologue
    const/4 v6, 0x1

    .line 1334
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1336
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1339
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1340
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1358
    :goto_0
    return-void

    .line 1343
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    .line 1344
    if-nez p1, :cond_2

    .line 1345
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->catalogIdUrlIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    .line 1348
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

    .line 1352
    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1353
    if-nez p1, :cond_4

    .line 1354
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->catalogIdUrlIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    .line 1357
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

    .prologue
    const/4 v6, 0x1

    .line 802
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 804
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 807
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 808
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 826
    :goto_0
    return-void

    .line 811
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    .line 812
    if-nez p1, :cond_2

    .line 813
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->certIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    .line 816
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

    .line 820
    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 821
    if-nez p1, :cond_4

    .line 822
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->certIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    .line 825
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

    .prologue
    const/4 v6, 0x1

    .line 916
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 918
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 921
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 922
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 940
    :goto_0
    return-void

    .line 925
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    .line 926
    if-nez p1, :cond_2

    .line 927
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->copyrightIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    .line 930
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

    .line 934
    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 935
    if-nez p1, :cond_4

    .line 936
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->copyrightIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    .line 939
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

    .prologue
    const/4 v6, 0x1

    .line 878
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 880
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 883
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 884
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 902
    :goto_0
    return-void

    .line 887
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    .line 888
    if-nez p1, :cond_2

    .line 889
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->defaultTrailerIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    .line 892
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

    .line 896
    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 897
    if-nez p1, :cond_4

    .line 898
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->defaultTrailerIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    .line 901
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

    .prologue
    .line 530
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 532
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 535
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 536
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 546
    :goto_0
    return-void

    .line 539
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 540
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

    .line 544
    :cond_2
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 545
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

    .prologue
    const/4 v6, 0x1

    .line 764
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 766
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 769
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 770
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 788
    :goto_0
    return-void

    .line 773
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    .line 774
    if-nez p1, :cond_2

    .line 775
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->genresIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    .line 778
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

    .line 782
    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 783
    if-nez p1, :cond_4

    .line 784
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->genresIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    .line 787
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

    .prologue
    const/4 v6, 0x1

    .line 992
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 994
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 997
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 998
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1016
    :goto_0
    return-void

    .line 1001
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    .line 1002
    if-nez p1, :cond_2

    .line 1003
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hResLandBoxArtUrlIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    .line 1006
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

    .line 1010
    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1011
    if-nez p1, :cond_4

    .line 1012
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hResLandBoxArtUrlIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    .line 1015
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

    .prologue
    const/4 v6, 0x1

    .line 954
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 956
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 959
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 960
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 978
    :goto_0
    return-void

    .line 963
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    .line 964
    if-nez p1, :cond_2

    .line 965
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hResPortBoxArtUrlIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    .line 968
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

    .line 972
    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 973
    if-nez p1, :cond_4

    .line 974
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hResPortBoxArtUrlIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    .line 977
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

    .prologue
    .line 1576
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1578
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1581
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1582
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1592
    :goto_0
    return-void

    .line 1585
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 1586
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

    .line 1590
    :cond_2
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1591
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

    .prologue
    .line 1546
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1548
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1551
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1552
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1562
    :goto_0
    return-void

    .line 1555
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 1556
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

    .line 1560
    :cond_2
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1561
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

    .prologue
    const/4 v6, 0x1

    .line 1144
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1146
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1149
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1150
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1168
    :goto_0
    return-void

    .line 1153
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    .line 1154
    if-nez p1, :cond_2

    .line 1155
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->horzDispSmallUrlIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    .line 1158
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

    .line 1162
    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1163
    if-nez p1, :cond_4

    .line 1164
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->horzDispSmallUrlIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    .line 1167
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

    .prologue
    const/4 v6, 0x1

    .line 1106
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1108
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1111
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1112
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1130
    :goto_0
    return-void

    .line 1115
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    .line 1116
    if-nez p1, :cond_2

    .line 1117
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->horzDispUrlIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    .line 1120
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

    .line 1124
    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1125
    if-nez p1, :cond_4

    .line 1126
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->horzDispUrlIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    .line 1129
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

    .prologue
    .line 316
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 318
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 321
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    return-void

    .line 326
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 327
    new-instance v0, Lio/realm/exceptions/RealmException;

    const-string/jumbo v1, "Primary key field \'id\' cannot be changed after object was created."

    invoke-direct {v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public realmSet$isInQueue(Z)V
    .locals 8

    .prologue
    .line 1606
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1608
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1611
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1612
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1622
    :goto_0
    return-void

    .line 1615
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 1616
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

    .line 1620
    :cond_2
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1621
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

    .prologue
    .line 1486
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1488
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1491
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1492
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1502
    :goto_0
    return-void

    .line 1495
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 1496
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

    .line 1500
    :cond_2
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1501
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

    .prologue
    .line 1516
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1518
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1521
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1522
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1532
    :goto_0
    return-void

    .line 1525
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 1526
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

    .line 1530
    :cond_2
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1531
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

    .prologue
    .line 1696
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1698
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1701
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1702
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1712
    :goto_0
    return-void

    .line 1705
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 1706
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

    .line 1710
    :cond_2
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1711
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

    .prologue
    .line 1726
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1728
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1731
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1732
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1742
    :goto_0
    return-void

    .line 1735
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 1736
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

    .line 1740
    :cond_2
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1741
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

    .prologue
    .line 1786
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1788
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1791
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1792
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1802
    :goto_0
    return-void

    .line 1795
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 1796
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

    .line 1800
    :cond_2
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1801
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

    .prologue
    .line 1636
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1638
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1641
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1642
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1652
    :goto_0
    return-void

    .line 1645
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 1646
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

    .line 1650
    :cond_2
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1651
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

    .prologue
    .line 1756
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1758
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1761
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1762
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1772
    :goto_0
    return-void

    .line 1765
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 1766
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

    .line 1770
    :cond_2
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1771
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

    .prologue
    .line 1666
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1668
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1671
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1672
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1682
    :goto_0
    return-void

    .line 1675
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 1676
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

    .line 1680
    :cond_2
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1681
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

    .prologue
    .line 620
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 622
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 625
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 626
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 636
    :goto_0
    return-void

    .line 629
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 630
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

    .line 634
    :cond_2
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 635
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

    .prologue
    .line 344
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 346
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 349
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 350
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_2

    .line 387
    :cond_1
    :goto_0
    return-void

    .line 353
    :cond_2
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "playable"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 356
    if-eqz p1, :cond_b

    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 357
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    invoke-virtual {v0, p1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    move-object v6, v0

    .line 359
    :goto_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    .line 360
    if-nez v6, :cond_3

    .line 362
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v0, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->playableIndex:J

    invoke-interface {v4, v0, v1}, Lio/realm/internal/Row;->nullifyLink(J)V

    goto :goto_0

    .line 365
    :cond_3
    invoke-static {v6}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 366
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'value\' is not a valid managed object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move-object v0, v6

    .line 368
    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    if-eq v0, v1, :cond_5

    .line 369
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'value\' belongs to a different Realm."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
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

    .line 375
    :cond_6
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 376
    if-nez p1, :cond_7

    .line 377
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->playableIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->nullifyLink(J)V

    goto/16 :goto_0

    .line 380
    :cond_7
    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 381
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'value\' is not a valid managed object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move-object v0, p1

    .line 383
    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    if-eq v0, v1, :cond_a

    .line 384
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'value\' belongs to a different Realm."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
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

    .prologue
    .line 1846
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1848
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1851
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1852
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1862
    :goto_0
    return-void

    .line 1855
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 1856
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

    .line 1860
    :cond_2
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1861
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

    .prologue
    const/4 v6, 0x1

    .line 401
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 403
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 406
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 407
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 425
    :goto_0
    return-void

    .line 410
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    .line 411
    if-nez p1, :cond_2

    .line 412
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->profileIdIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    .line 415
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

    .line 419
    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 420
    if-nez p1, :cond_4

    .line 421
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->profileIdIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    .line 424
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

    .prologue
    const/4 v6, 0x1

    .line 688
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 690
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 693
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 694
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 712
    :goto_0
    return-void

    .line 697
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    .line 698
    if-nez p1, :cond_2

    .line 699
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->qualityIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    .line 702
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

    .line 706
    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 707
    if-nez p1, :cond_4

    .line 708
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->qualityIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    .line 711
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

    .prologue
    .line 475
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 477
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 480
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 481
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_2

    .line 516
    :cond_1
    return-void

    .line 484
    :cond_2
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "seasonLabels"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 487
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-nez v0, :cond_6

    .line 488
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    .line 490
    new-instance v2, Lio/realm/RealmList;

    invoke-direct {v2}, Lio/realm/RealmList;-><init>()V

    .line 491
    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;

    .line 492
    if-eqz v1, :cond_3

    invoke-static {v1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 493
    :cond_3
    invoke-virtual {v2, v1}, Lio/realm/RealmList;->add(Lio/realm/RealmModel;)Z

    goto :goto_0

    .line 495
    :cond_4
    invoke-virtual {v0, v1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v1

    invoke-virtual {v2, v1}, Lio/realm/RealmList;->add(Lio/realm/RealmModel;)Z

    goto :goto_0

    :cond_5
    move-object p1, v2

    .line 501
    :cond_6
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 502
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->seasonLabelsIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getLinkList(J)Lio/realm/internal/LinkView;

    move-result-object v2

    .line 503
    invoke-virtual {v2}, Lio/realm/internal/LinkView;->clear()V

    .line 504
    if-eqz p1, :cond_1

    .line 507
    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    .line 508
    invoke-static {v0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 509
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Each element of \'value\' must be a valid managed object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object v1, v0

    .line 511
    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    iget-object v4, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    if-eq v1, v4, :cond_9

    .line 512
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Each element of \'value\' must belong to the same Realm."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
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

    .prologue
    .line 439
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 441
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 444
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 445
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 455
    :goto_0
    return-void

    .line 448
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 449
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

    .line 453
    :cond_2
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 454
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

    .prologue
    const/4 v6, 0x1

    .line 1182
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1184
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1187
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1188
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1206
    :goto_0
    return-void

    .line 1191
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    .line 1192
    if-nez p1, :cond_2

    .line 1193
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->storyDispUrlIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    .line 1196
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

    .line 1200
    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1201
    if-nez p1, :cond_4

    .line 1202
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->storyDispUrlIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    .line 1205
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

    .prologue
    const/4 v6, 0x1

    .line 1258
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1260
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1263
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1264
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1282
    :goto_0
    return-void

    .line 1267
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    .line 1268
    if-nez p1, :cond_2

    .line 1269
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->storyUrlIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    .line 1272
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

    .line 1276
    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1277
    if-nez p1, :cond_4

    .line 1278
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->storyUrlIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    .line 1281
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

    .prologue
    const/4 v6, 0x1

    .line 840
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 842
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 845
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 846
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 864
    :goto_0
    return-void

    .line 849
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    .line 850
    if-nez p1, :cond_2

    .line 851
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->supplMessageIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    .line 854
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

    .line 858
    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 859
    if-nez p1, :cond_4

    .line 860
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->supplMessageIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    .line 863
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

    .prologue
    const/4 v6, 0x1

    .line 650
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 652
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 655
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 656
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 674
    :goto_0
    return-void

    .line 659
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    .line 660
    if-nez p1, :cond_2

    .line 661
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->synopsisIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    .line 664
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

    .line 668
    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 669
    if-nez p1, :cond_4

    .line 670
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->synopsisIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    .line 673
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

    .prologue
    const/4 v6, 0x1

    .line 1448
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1450
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1453
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1454
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1472
    :goto_0
    return-void

    .line 1457
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    .line 1458
    if-nez p1, :cond_2

    .line 1459
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->titleIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    .line 1462
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

    .line 1466
    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1467
    if-nez p1, :cond_4

    .line 1468
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->titleIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    .line 1471
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

    .prologue
    const/4 v6, 0x1

    .line 1410
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1412
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1415
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1416
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1434
    :goto_0
    return-void

    .line 1419
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    .line 1420
    if-nez p1, :cond_2

    .line 1421
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->titleCroppedImgUrlIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    .line 1424
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

    .line 1428
    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1429
    if-nez p1, :cond_4

    .line 1430
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->titleCroppedImgUrlIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    .line 1433
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

    .prologue
    const/4 v6, 0x1

    .line 1372
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1374
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1377
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1378
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1396
    :goto_0
    return-void

    .line 1381
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    .line 1382
    if-nez p1, :cond_2

    .line 1383
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->titleImgUrlIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    .line 1386
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

    .line 1390
    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1391
    if-nez p1, :cond_4

    .line 1392
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->titleImgUrlIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    .line 1395
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

    .prologue
    const/4 v6, 0x1

    .line 1220
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1222
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1225
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1226
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1244
    :goto_0
    return-void

    .line 1229
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    .line 1230
    if-nez p1, :cond_2

    .line 1231
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->tvCardUrlIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    .line 1234
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

    .line 1238
    :cond_3
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1239
    if-nez p1, :cond_4

    .line 1240
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->tvCardUrlIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    .line 1243
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

    .prologue
    .line 1816
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 1818
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 1821
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1822
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1832
    :goto_0
    return-void

    .line 1825
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 1826
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

    .line 1830
    :cond_2
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1831
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

    .prologue
    .line 560
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 562
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 565
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 566
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 576
    :goto_0
    return-void

    .line 569
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 570
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

    .line 574
    :cond_2
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 575
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

    .prologue
    .line 590
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-nez v0, :cond_0

    .line 592
    invoke-direct {p0}, Lio/realm/RealmVideoDetailsRealmProxy;->injectObjectContext()V

    .line 595
    :cond_0
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 596
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 606
    :goto_0
    return-void

    .line 599
    :cond_1
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 600
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

    .line 604
    :cond_2
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 605
    iget-object v0, p0, Lio/realm/RealmVideoDetailsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmVideoDetailsRealmProxy;->columnInfo:Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    iget-wide v2, v1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->yearIndex:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/Row;->setLong(JJ)V

    goto :goto_0
.end method
