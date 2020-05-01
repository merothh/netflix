.class public Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/model/leafs/PostPlayExperience;


# static fields
.field private static final BETWEEN_TITLE:Ljava/lang/String; = "betweenTitle"

.field private static final NON_SEQUENTIAL:Ljava/lang/String; = "non_sequentialInSameTitle"

.field protected static final OFFLINE_POST_PLAY_AUTOPLAY_SECONDS:I = 0xa

.field protected static final OFFLINE_POST_PLAY_TYPE:Ljava/lang/String; = "nextEpisode"


# instance fields
.field private final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/PostPlayAction;",
            ">;"
        }
    .end annotation
.end field

.field private actionsInitialIndex:Ljava/lang/Integer;

.field private autoplay:Z

.field private autoplaySeconds:I

.field private backgroundAsset:Lcom/netflix/model/leafs/PostPlayAsset;

.field private final experienceTitle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/PostPlayAction;",
            ">;"
        }
    .end annotation
.end field

.field private impressionToken:Ljava/lang/String;

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/PostPlayItem;",
            ">;"
        }
    .end annotation
.end field

.field private itemsInitialIndex:Ljava/lang/Integer;

.field private logoAsset:Lcom/netflix/model/leafs/PostPlayAsset;

.field private promotedSupplementalMessage:Ljava/lang/String;

.field private promotedTitle:Ljava/lang/String;

.field private promotedVideoId:Ljava/lang/Integer;

.field private requestId:Ljava/lang/String;

.field private seamlessCountdownSeconds:I

.field private seamlessEnd:I

.field private seasonRenewal:Lcom/netflix/model/leafs/SeasonRenewal;

.field private theme:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->experienceTitle:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->actions:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->items:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lo/AK;Ljava/lang/String;Ljava/lang/String;ZIII)V
    .locals 6

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->experienceTitle:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->actions:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->items:Ljava/util/List;

    const-string v0, "nextEpisode"

    .line 65
    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->setType(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, p4}, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->setAutoplay(Z)V

    const/16 p4, 0xa

    .line 67
    invoke-virtual {p0, p4}, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->setAutoplaySeconds(I)V

    .line 68
    invoke-virtual {p0, p4}, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->setSeamlessCountdownSeconds(I)V

    .line 69
    invoke-virtual {p0, p3}, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->setRequestId(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 72
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->setItemsInitialIndex(Ljava/lang/Integer;)V

    .line 73
    invoke-virtual {p0, p3}, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->setActionsInitialIndex(Ljava/lang/Integer;)V

    .line 74
    invoke-virtual {p0}, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->getItems()Ljava/util/List;

    move-result-object p3

    new-instance p4, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;-><init>(Lo/AK;Ljava/lang/String;III)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lo/AK;Ljava/lang/String;Ljava/lang/String;ZIIIILcom/netflix/mediaclient/servicemgr/interface_/VideoType;IZZ)V
    .locals 13

    move-object v0, p0

    move/from16 v1, p4

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->experienceTitle:Ljava/util/List;

    .line 45
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->actions:Ljava/util/List;

    .line 48
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->items:Ljava/util/List;

    const/16 v2, 0xa

    .line 79
    invoke-virtual {p0, v2}, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->setAutoplaySeconds(I)V

    .line 80
    invoke-virtual {p0, v2}, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->setSeamlessCountdownSeconds(I)V

    move-object/from16 v2, p3

    .line 81
    invoke-virtual {p0, v2}, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->setRequestId(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 84
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->setItemsInitialIndex(Ljava/lang/Integer;)V

    .line 85
    invoke-virtual {p0, v3}, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->setActionsInitialIndex(Ljava/lang/Integer;)V

    .line 86
    new-instance v3, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;

    move-object v4, v3

    move-object v5, p1

    move-object v6, p2

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    invoke-direct/range {v4 .. v12}, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;-><init>(Lo/AK;Ljava/lang/String;IIIILcom/netflix/mediaclient/servicemgr/interface_/VideoType;I)V

    if-eqz p11, :cond_0

    const-string v1, "betweenTitle"

    .line 89
    invoke-virtual {p0, v1}, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->setType(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v3, v1}, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->setExperienceType(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v3, v2}, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->setAutoPlay(Z)V

    .line 92
    iput-boolean v2, v0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->autoplay:Z

    goto :goto_1

    :cond_0
    const-string v2, "nextEpisode"

    if-eqz p12, :cond_1

    .line 95
    invoke-virtual {v3, v2}, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->setType(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v4, "non_sequentialInSameTitle"

    .line 97
    invoke-virtual {v3, v4}, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->setType(Ljava/lang/String;)V

    .line 99
    :goto_0
    invoke-virtual {p0, v2}, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->setType(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v3, v2}, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->setExperienceType(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v3, v1}, Lcom/netflix/model/leafs/offline/OfflinePostPlayItem;->setAutoPlay(Z)V

    .line 102
    iput-boolean v1, v0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->autoplay:Z

    .line 104
    :goto_1
    invoke-virtual {p0}, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/PostPlayAction;",
            ">;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->actions:Ljava/util/List;

    return-object v0
.end method

.method public getActionsInitialIndex()Ljava/lang/Integer;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->actionsInitialIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAutoPlayAction()Lcom/netflix/model/leafs/PostPlayAction;
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/PostPlayItem;

    .line 272
    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayItem;->getAutoPlayAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getAutoPlayActionSeconds()I
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/PostPlayItem;

    .line 315
    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayItem;->getAutoPlayAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 317
    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayAction;->getAutoplaySeconds()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAutoPlayItem()Lcom/netflix/model/leafs/PostPlayItem;
    .locals 3

    .line 285
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/PostPlayItem;

    .line 286
    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayItem;->getAutoPlayAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getAutoplay()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->autoplay:Z

    return v0
.end method

.method public getAutoplaySeconds()I
    .locals 1

    .line 155
    iget v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->autoplaySeconds:I

    return v0
.end method

.method public getBackgroundAsset()Lcom/netflix/model/leafs/PostPlayAsset;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->backgroundAsset:Lcom/netflix/model/leafs/PostPlayAsset;

    return-object v0
.end method

.method public getExperienceTitle()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/PostPlayAction;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->experienceTitle:Ljava/util/List;

    return-object v0
.end method

.method public getImpressionToken()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->impressionToken:Ljava/lang/String;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/PostPlayItem;",
            ">;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->items:Ljava/util/List;

    return-object v0
.end method

.method public getItemsInitialIndex()Ljava/lang/Integer;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->itemsInitialIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLogoAsset()Lcom/netflix/model/leafs/PostPlayAsset;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->logoAsset:Lcom/netflix/model/leafs/PostPlayAsset;

    return-object v0
.end method

.method public getPromotedSupplementalMessage()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->promotedSupplementalMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotedTitle()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->promotedTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotedVideoId()Ljava/lang/Integer;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->promotedVideoId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getSeamlessCountdownSeconds()I
    .locals 1

    .line 243
    iget v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->seamlessCountdownSeconds:I

    return v0
.end method

.method public getSeamlessEnd()I
    .locals 1

    .line 252
    iget v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->seamlessEnd:I

    return v0
.end method

.method public getSeasonRenewal()Lcom/netflix/model/leafs/SeasonRenewal;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->seasonRenewal:Lcom/netflix/model/leafs/SeasonRenewal;

    return-object v0
.end method

.method public getSeasonRenewalPostPlayItem()Lcom/netflix/model/leafs/PostPlayItem;
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/PostPlayItem;

    .line 300
    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayItem;->getSeasonRenewalPostPlayAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getTheme()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->theme:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public isOffline()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setActionsInitialIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->actionsInitialIndex:Ljava/lang/Integer;

    return-void
.end method

.method public setAutoplay(Z)V
    .locals 0

    .line 150
    iput-boolean p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->autoplay:Z

    return-void
.end method

.method public setAutoplaySeconds(I)V
    .locals 0

    .line 160
    iput p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->autoplaySeconds:I

    return-void
.end method

.method public setBackgroundAsset(Lcom/netflix/model/leafs/PostPlayAsset;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->backgroundAsset:Lcom/netflix/model/leafs/PostPlayAsset;

    return-void
.end method

.method public setImpressionToken(Ljava/lang/String;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->impressionToken:Ljava/lang/String;

    return-void
.end method

.method public setItemsInitialIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->itemsInitialIndex:Ljava/lang/Integer;

    return-void
.end method

.method public setLogoAsset(Lcom/netflix/model/leafs/PostPlayAsset;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->logoAsset:Lcom/netflix/model/leafs/PostPlayAsset;

    return-void
.end method

.method public setPromotedSupplementalMessage(Ljava/lang/String;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->promotedSupplementalMessage:Ljava/lang/String;

    return-void
.end method

.method public setPromotedTitle(Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->promotedTitle:Ljava/lang/String;

    return-void
.end method

.method public setPromotedVideoId(Ljava/lang/Integer;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->promotedVideoId:Ljava/lang/Integer;

    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->requestId:Ljava/lang/String;

    return-void
.end method

.method public setSeamlessCountdownSeconds(I)V
    .locals 0

    .line 247
    iput p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->seamlessCountdownSeconds:I

    return-void
.end method

.method public setSeamlessEnd(I)V
    .locals 0

    .line 256
    iput p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->seamlessEnd:I

    return-void
.end method

.method public setTheme(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->theme:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/netflix/model/leafs/offline/OfflinePostPlayExperience;->type:Ljava/lang/String;

    return-void
.end method
