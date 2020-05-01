.class public Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;
.super Ljava/lang/Object;
.source "OfflineAdapterData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OfflineAdapterData"


# instance fields
.field private final episodes:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

.field private final videoAndProfileData:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;->PROFILE:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v3, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->videoAndProfileData:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;

    iput-object v3, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->episodes:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;Ljava/util/List;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, p1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->videoAndProfileData:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;

    iput-object v4, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->episodes:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    :goto_0
    return-void

    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v5, v6

    move v3, v6

    move-object v2, v4

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_5

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getSeasonNumber()I

    move-result v8

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    if-eqz v1, :cond_3

    if-nez v2, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move-object v2, v1

    move v1, v0

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v5, v0, :cond_1

    add-int/lit8 v0, v5, 0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getSeasonNumber()I

    move-result v0

    if-eq v8, v0, :cond_2

    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    new-instance v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-direct {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;-><init>()V

    invoke-virtual {v3, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->fillForRealm(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    invoke-virtual {p1, v8}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getSeasonLongLabel(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    sget-object v9, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SEASON:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v3, v0, v9, v8}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->setPlayableAndVideoType(Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v2, v4

    :cond_2
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v3, v1

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "OfflineAdapterData"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Skipping the episode since its ID was not found inside our core data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v1, v3

    goto :goto_3

    :cond_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->episodes:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;

    invoke-direct {v0, v1, v4, p1, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->videoAndProfileData:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;

    goto/16 :goto_0

    :cond_6
    move-object v1, v2

    goto/16 :goto_2
.end method

.method private getEpisodeDetailsForVideoId(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;
    .locals 5

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->episodes:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public containsPlayable(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$1;->$SwitchMap$com$netflix$mediaclient$servicemgr$interface_$offline$OfflineAdapterData$ViewType:[I

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->videoAndProfileData:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;

    iget-object v2, v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->type:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->videoAndProfileData:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;

    iget-object v0, v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->video:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->getEpisodeDetailsForVideoId(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getCurrentSpace(Ljava/util/Map;)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v2, 0x0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$1;->$SwitchMap$com$netflix$mediaclient$servicemgr$interface_$offline$OfflineAdapterData$ViewType:[I

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->videoAndProfileData:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;

    iget-object v1, v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->type:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-wide v2

    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->videoAndProfileData:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;

    iget-object v0, v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->video:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getTotalEstimatedSpace()J

    move-result-wide v2

    goto :goto_0

    :pswitch_1
    iget-object v5, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->episodes:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    array-length v6, v5

    const/4 v0, 0x0

    move v4, v0

    :goto_1
    if-ge v4, v6, :cond_0

    aget-object v0, v5, v4

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v7, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v7, :cond_1

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getTotalEstimatedSpace()J

    move-result-wide v0

    add-long/2addr v0, v2

    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v0

    goto :goto_1

    :cond_1
    move-wide v0, v2

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getEpisodes()[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->episodes:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    return-object v0
.end method

.method protected getPercentage(Ljava/util/Map;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$1;->$SwitchMap$com$netflix$mediaclient$servicemgr$interface_$offline$OfflineAdapterData$ViewType:[I

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->videoAndProfileData:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;

    iget-object v2, v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->type:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->videoAndProfileData:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;

    iget-object v0, v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->video:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPercentageDownloaded()I

    move-result v0

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->episodes:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    array-length v5, v4

    move v3, v0

    move v1, v0

    move v2, v0

    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v0, v4, v3

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v6

    sget-object v7, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v6, v7, :cond_1

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPercentageDownloaded()I

    move-result v0

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v2

    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_1

    :cond_0
    div-int v0, v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    move v1, v2

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getVideoAndProfileData()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->videoAndProfileData:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;

    return-object v0
.end method
