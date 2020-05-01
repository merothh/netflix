.class public Lcom/netflix/model/leafs/PostPlayItemImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DocumentsProvider;
.implements Lo/AP;
.implements Lcom/netflix/model/leafs/PostPlayItem;


# static fields
.field private static final TAG:Ljava/lang/String; = "PostPlayItem"


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

.field private ancestorSynopsis:Ljava/lang/String;

.field private ancestorTitle:Ljava/lang/String;

.field private autoPlay:Z

.field private autoPlaySeconds:I

.field private availabilityDateMessaging:Ljava/lang/String;

.field private backgroundAsset:Lcom/netflix/model/leafs/PostPlayAsset;

.field private badgeKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private delivery:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private displayArtAsset:Lcom/netflix/model/leafs/PostPlayAssetImpl;

.field private episodeNumberHidden:Z

.field private episodes:I

.field private experienceType:Ljava/lang/String;

.field private impressionData:Ljava/lang/String;

.field private isNSRE:Z

.field private logoAsset:Lcom/netflix/model/leafs/PostPlayAssetImpl;

.field private matchPercentage:I

.field private maturityRating:Ljava/lang/String;

.field private newForPvr:Z

.field private nextEpisodeAutoPlay:Z

.field private nextEpisodeSeamless:Z

.field proxy:Lo/TableLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/TableLayout<",
            "+",
            "Lo/Browser;",
            ">;"
        }
    .end annotation
.end field

.field private runtime:I

.field private seamlessStart:I

.field private seasonSequenceAbbr:Ljava/lang/String;

.field private seasons:I

.field private seasonsLabel:Ljava/lang/String;

.field private supplementalMessage:Ljava/lang/String;

.field private synopsis:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private uiLabel:Ljava/lang/String;

.field private userThumbRating:I

.field private videoId:Ljava/lang/Integer;

.field private year:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, v0, v0}, Lcom/netflix/model/leafs/PostPlayItemImpl;-><init>(Lcom/google/gson/JsonElement;Lo/TableLayout;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/JsonElement;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, v0}, Lcom/netflix/model/leafs/PostPlayItemImpl;-><init>(Lcom/google/gson/JsonElement;Lo/TableLayout;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/JsonElement;Lo/TableLayout;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            "Lo/TableLayout<",
            "+",
            "Lo/Browser;",
            ">;)V"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->delivery:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->actions:Ljava/util/List;

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->isNSRE:Z

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->badgeKeys:Ljava/util/List;

    .line 93
    iput-object p2, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->proxy:Lo/TableLayout;

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/PostPlayItemImpl;->populate(Lcom/google/gson/JsonElement;)V

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/netflix/model/leafs/PostPlayItemImpl;->initializeUILabel()V

    .line 98
    invoke-virtual {p0}, Lcom/netflix/model/leafs/PostPlayItemImpl;->getAutoPlayAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 99
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/PostPlayItemImpl;->setAutoPlay(Z)V

    :cond_1
    return-void
.end method

.method private initializeUILabel()V
    .locals 1

    const-string v0, "postplay"

    .line 105
    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->uiLabel:Ljava/lang/String;

    return-void
.end method

.method private populateCTA(Lcom/google/gson/JsonElement;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/PostPlayAction;",
            ">;)V"
        }
    .end annotation

    .line 183
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 185
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 186
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 187
    new-instance v1, Lcom/netflix/model/leafs/PostPlayActionImpl;

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->proxy:Lo/TableLayout;

    invoke-direct {v1, v2, v3}, Lcom/netflix/model/leafs/PostPlayActionImpl;-><init>(Lcom/google/gson/JsonElement;Lo/TableLayout;)V

    .line 188
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private populateFloatMap(Lcom/google/gson/JsonElement;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 203
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 205
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 206
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private populateMap(Lcom/google/gson/JsonElement;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 194
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 196
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 197
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private populateThumbsRating(Lcom/google/gson/JsonElement;)V
    .locals 3

    .line 167
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string v0, "matchPercentage"

    .line 168
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->matchPercentage:I

    goto :goto_0

    .line 171
    :cond_0
    iput v2, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->matchPercentage:I

    :goto_0
    const-string v0, "userThumbsRating"

    .line 173
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-nez v1, :cond_1

    .line 174
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/ShellCallback;->e(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->userThumbRating:I

    goto :goto_1

    .line 176
    :cond_1
    iput v2, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->userThumbRating:I

    :goto_1
    const-string v0, "newForPVR"

    .line 178
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 179
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->newForPvr:Z

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

    .line 437
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->actions:Ljava/util/List;

    return-object v0
.end method

.method public getAncestorSynopsis()Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->ancestorSynopsis:Ljava/lang/String;

    return-object v0
.end method

.method public getAncestorTitle()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->ancestorTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoPlayAction()Lcom/netflix/model/leafs/PostPlayAction;
    .locals 4

    const/4 v0, 0x0

    .line 426
    :goto_0
    iget-object v1, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->actions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 427
    iget-object v1, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->actions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/PostPlayAction;

    if-eqz v1, :cond_0

    .line 428
    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayAction;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "play"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayAction;->isAutoPlay()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAutoPlaySeconds()I
    .locals 1

    .line 568
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->autoPlaySeconds:I

    return v0
.end method

.method public getAvailabilityDateMessaging()Ljava/lang/String;
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->availabilityDateMessaging:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundAsset()Lcom/netflix/model/leafs/PostPlayAsset;
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->backgroundAsset:Lcom/netflix/model/leafs/PostPlayAsset;

    return-object v0
.end method

.method public getBadgeKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 548
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->badgeKeys:Ljava/util/List;

    return-object v0
.end method

.method public getDelivery()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->delivery:Ljava/util/Map;

    return-object v0
.end method

.method public getDisplayArtAsset()Lcom/netflix/model/leafs/PostPlayAsset;
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->displayArtAsset:Lcom/netflix/model/leafs/PostPlayAssetImpl;

    return-object v0
.end method

.method public getEpisodes()I
    .locals 1

    .line 322
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->episodes:I

    return v0
.end method

.method public getExperienceType()Ljava/lang/String;
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->experienceType:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstActionWithTrackId()Lcom/netflix/model/leafs/PostPlayAction;
    .locals 3

    const/4 v0, 0x0

    .line 400
    :goto_0
    iget-object v1, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->actions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 401
    iget-object v1, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->actions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/PostPlayAction;

    if-eqz v1, :cond_0

    .line 402
    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayAction;->getTrackId()I

    move-result v2

    if-lez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImpressionData()Ljava/lang/String;
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->impressionData:Ljava/lang/String;

    return-object v0
.end method

.method public getLogoAsset()Lcom/netflix/model/leafs/PostPlayAsset;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->logoAsset:Lcom/netflix/model/leafs/PostPlayAssetImpl;

    return-object v0
.end method

.method public getMatchPercentage()I
    .locals 1

    .line 469
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->matchPercentage:I

    return v0
.end method

.method public getMaturityRating()Ljava/lang/String;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->maturityRating:Ljava/lang/String;

    return-object v0
.end method

.method public getMoreInfoAction()Lcom/netflix/model/leafs/PostPlayAction;
    .locals 4

    const/4 v0, 0x0

    .line 412
    :goto_0
    iget-object v1, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->actions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 413
    iget-object v1, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->actions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/PostPlayAction;

    if-eqz v1, :cond_1

    .line 414
    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayAction;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "details"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 415
    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayAction;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mdp"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayAction()Lcom/netflix/model/leafs/PostPlayAction;
    .locals 4

    const/4 v0, 0x0

    .line 349
    :goto_0
    iget-object v1, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->actions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 350
    iget-object v1, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->actions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/PostPlayAction;

    if-eqz v1, :cond_0

    .line 351
    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayAction;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "play"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayActionAtIndex(I)Lcom/netflix/model/leafs/PostPlayAction;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 383
    :goto_0
    iget-object v2, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->actions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 384
    iget-object v2, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->actions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/model/leafs/PostPlayAction;

    if-eqz v2, :cond_1

    .line 385
    invoke-interface {v2}, Lcom/netflix/model/leafs/PostPlayAction;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "play"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-ne v1, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPlayTrailerAction()Lcom/netflix/model/leafs/PostPlayAction;
    .locals 4

    const/4 v0, 0x0

    .line 361
    :goto_0
    iget-object v1, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->actions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 362
    iget-object v1, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->actions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/PostPlayAction;

    if-eqz v1, :cond_0

    .line 363
    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayAction;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "play"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 364
    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayAction;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "playTrailer"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRuntime()I
    .locals 1

    .line 331
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->runtime:I

    return v0
.end method

.method public getSeamlessStart()I
    .locals 1

    .line 612
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->seamlessStart:I

    return v0
.end method

.method public getSeasonRenewalPlayTrailerAction()Lcom/netflix/model/leafs/PostPlayAction;
    .locals 4

    const/4 v0, 0x0

    .line 500
    :goto_0
    iget-object v1, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->actions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 501
    iget-object v1, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->actions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/PostPlayAction;

    if-eqz v1, :cond_0

    .line 503
    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayAction;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "play"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 504
    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayAction;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "playTrailer"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSeasonRenewalPostPlayAction()Lcom/netflix/model/leafs/PostPlayAction;
    .locals 4

    const/4 v0, 0x0

    .line 487
    :goto_0
    iget-object v1, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->actions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 488
    iget-object v1, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->actions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/PostPlayAction;

    if-eqz v1, :cond_0

    .line 489
    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayAction;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "play"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSeasonSequenceAbbr()Ljava/lang/String;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->seasonSequenceAbbr:Ljava/lang/String;

    return-object v0
.end method

.method public getSeasons()I
    .locals 1

    .line 313
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->seasons:I

    return v0
.end method

.method public getSeasonsLabel()Ljava/lang/String;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->seasonsLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getSupplementalMessage()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->supplementalMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getSynopsis()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->synopsis:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUiLabel()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->uiLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getUserThumbRating()I
    .locals 1

    .line 475
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->userThumbRating:I

    return v0
.end method

.method public getVideoId()Ljava/lang/Integer;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->videoId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getYear()Ljava/lang/Integer;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->year:Ljava/lang/Integer;

    return-object v0
.end method

.method public hasNewBadge()Z
    .locals 2

    .line 553
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->badgeKeys:Ljava/util/List;

    const-string v1, "NEW"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isAutoPlay()Z
    .locals 1

    .line 558
    iget-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->autoPlay:Z

    return v0
.end method

.method public isEpisodeNumberHidden()Z
    .locals 1

    .line 522
    iget-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->episodeNumberHidden:Z

    return v0
.end method

.method public isNSRE()Z
    .locals 1

    .line 517
    iget-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->isNSRE:Z

    return v0
.end method

.method public isNewForPvr()Z
    .locals 1

    .line 513
    iget-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->newForPvr:Z

    return v0
.end method

.method public isNextEpisodeAutoPlay()Z
    .locals 1

    .line 578
    iget-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->nextEpisodeAutoPlay:Z

    return v0
.end method

.method public isNextEpisodeSeamless()Z
    .locals 1

    .line 597
    iget-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->nextEpisodeSeamless:Z

    return v0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 9

    .line 113
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 117
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 118
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 119
    instance-of v2, v1, Lcom/google/gson/JsonNull;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 120
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "badgeKeys"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x14

    goto/16 :goto_2

    :sswitch_1
    const-string v2, "seasons"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xc

    goto/16 :goto_2

    :sswitch_2
    const-string v2, "synopsis"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    goto/16 :goto_2

    :sswitch_3
    const-string v2, "hiddenEpisodeNumbers"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x12

    goto/16 :goto_2

    :sswitch_4
    const-string v2, "runtime"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xe

    goto/16 :goto_2

    :sswitch_5
    const-string v2, "maturityRating"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    goto/16 :goto_2

    :sswitch_6
    const-string v2, "availabilityDateMessaging"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x13

    goto/16 :goto_2

    :sswitch_7
    const-string v2, "delivery"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xf

    goto/16 :goto_2

    :sswitch_8
    const-string v2, "videoId"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto/16 :goto_2

    :sswitch_9
    const-string v2, "supplementalMessage"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto/16 :goto_2

    :sswitch_a
    const-string v2, "ancestorTitle"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto/16 :goto_2

    :sswitch_b
    const-string v2, "title"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto/16 :goto_2

    :sswitch_c
    const-string v2, "year"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    goto/16 :goto_2

    :sswitch_d
    const-string v2, "type"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto/16 :goto_2

    :sswitch_e
    const-string v2, "impressionData"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x16

    goto/16 :goto_2

    :sswitch_f
    const-string v2, "seasonsLabel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xb

    goto :goto_2

    :sswitch_10
    const-string v2, "uiLabel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x17

    goto :goto_2

    :sswitch_11
    const-string v2, "episodes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xd

    goto :goto_2

    :sswitch_12
    const-string v2, "ancestorSynopsis"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    goto :goto_2

    :sswitch_13
    const-string v2, "rating"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    goto :goto_2

    :sswitch_14
    const-string v2, "actions"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x10

    goto :goto_2

    :sswitch_15
    const-string v2, "isNSRE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x11

    goto :goto_2

    :sswitch_16
    const-string v2, "assets"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x15

    goto :goto_2

    :sswitch_17
    const-string v2, "seasonSequenceAbbr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xa

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, -0x1

    :goto_2
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 161
    :pswitch_0
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->uiLabel:Ljava/lang/String;

    goto/16 :goto_0

    .line 160
    :pswitch_1
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->impressionData:Ljava/lang/String;

    goto/16 :goto_0

    .line 151
    :pswitch_2
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 153
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x327dbed2

    if-eq v7, v8, :cond_5

    const v8, -0x196a4eda

    if-eq v7, v8, :cond_4

    const v8, 0x23bdab

    if-eq v7, v8, :cond_3

    goto :goto_4

    :cond_3
    const-string v7, "LOGO"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x2

    goto :goto_5

    :cond_4
    const-string v7, "DISPLAY_ART"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_5

    :cond_5
    const-string v7, "BACKGROUND"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v2, -0x1

    :goto_5
    if-eqz v2, :cond_9

    if-eq v2, v6, :cond_8

    if-eq v2, v5, :cond_7

    goto :goto_3

    .line 156
    :cond_7
    new-instance v2, Lcom/netflix/model/leafs/PostPlayAssetImpl;

    sget-object v7, Lcom/netflix/model/leafs/PostPlayAsset$Type;->LOGO:Lcom/netflix/model/leafs/PostPlayAsset$Type;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    invoke-direct {v2, v7, v1}, Lcom/netflix/model/leafs/PostPlayAssetImpl;-><init>(Lcom/netflix/model/leafs/PostPlayAsset$Type;Lcom/google/gson/JsonElement;)V

    iput-object v2, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->logoAsset:Lcom/netflix/model/leafs/PostPlayAssetImpl;

    goto :goto_3

    .line 155
    :cond_8
    new-instance v2, Lcom/netflix/model/leafs/PostPlayAssetImpl;

    sget-object v7, Lcom/netflix/model/leafs/PostPlayAsset$Type;->DISPLAY_ART:Lcom/netflix/model/leafs/PostPlayAsset$Type;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    invoke-direct {v2, v7, v1}, Lcom/netflix/model/leafs/PostPlayAssetImpl;-><init>(Lcom/netflix/model/leafs/PostPlayAsset$Type;Lcom/google/gson/JsonElement;)V

    iput-object v2, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->displayArtAsset:Lcom/netflix/model/leafs/PostPlayAssetImpl;

    goto :goto_3

    .line 154
    :cond_9
    new-instance v2, Lcom/netflix/model/leafs/PostPlayAssetImpl;

    sget-object v7, Lcom/netflix/model/leafs/PostPlayAsset$Type;->BACKGROUND:Lcom/netflix/model/leafs/PostPlayAsset$Type;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    invoke-direct {v2, v7, v1}, Lcom/netflix/model/leafs/PostPlayAssetImpl;-><init>(Lcom/netflix/model/leafs/PostPlayAsset$Type;Lcom/google/gson/JsonElement;)V

    iput-object v2, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->backgroundAsset:Lcom/netflix/model/leafs/PostPlayAsset;

    goto :goto_3

    .line 142
    :pswitch_3
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->badgeKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 144
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 145
    :goto_6
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    if-ge v4, v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->badgeKeys:Ljava/util/List;

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 140
    :pswitch_4
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->availabilityDateMessaging:Ljava/lang/String;

    goto/16 :goto_0

    .line 139
    :pswitch_5
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->episodeNumberHidden:Z

    goto/16 :goto_0

    .line 138
    :pswitch_6
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->isNSRE:Z

    goto/16 :goto_0

    .line 137
    :pswitch_7
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->actions:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/netflix/model/leafs/PostPlayItemImpl;->populateCTA(Lcom/google/gson/JsonElement;Ljava/util/List;)V

    goto/16 :goto_0

    .line 136
    :pswitch_8
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->delivery:Ljava/util/Map;

    invoke-direct {p0, v1, v0}, Lcom/netflix/model/leafs/PostPlayItemImpl;->populateMap(Lcom/google/gson/JsonElement;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 135
    :pswitch_9
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->runtime:I

    goto/16 :goto_0

    .line 134
    :pswitch_a
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->episodes:I

    goto/16 :goto_0

    .line 133
    :pswitch_b
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->seasons:I

    goto/16 :goto_0

    .line 132
    :pswitch_c
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->seasonsLabel:Ljava/lang/String;

    goto/16 :goto_0

    .line 131
    :pswitch_d
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->seasonSequenceAbbr:Ljava/lang/String;

    goto/16 :goto_0

    .line 130
    :pswitch_e
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->maturityRating:Ljava/lang/String;

    goto/16 :goto_0

    .line 129
    :pswitch_f
    invoke-direct {p0, v1}, Lcom/netflix/model/leafs/PostPlayItemImpl;->populateThumbsRating(Lcom/google/gson/JsonElement;)V

    goto/16 :goto_0

    .line 128
    :pswitch_10
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->year:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 127
    :pswitch_11
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->ancestorSynopsis:Ljava/lang/String;

    goto/16 :goto_0

    .line 126
    :pswitch_12
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->synopsis:Ljava/lang/String;

    goto/16 :goto_0

    .line 125
    :pswitch_13
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->supplementalMessage:Ljava/lang/String;

    goto/16 :goto_0

    .line 124
    :pswitch_14
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->ancestorTitle:Ljava/lang/String;

    goto/16 :goto_0

    .line 123
    :pswitch_15
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->title:Ljava/lang/String;

    goto/16 :goto_0

    .line 122
    :pswitch_16
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->type:Ljava/lang/String;

    goto/16 :goto_0

    .line 121
    :pswitch_17
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->videoId:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_a
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x643ec5eb -> :sswitch_17
        -0x53ef8c7d -> :sswitch_16
        -0x4659e11e -> :sswitch_15
        -0x453fb703 -> :sswitch_14
        -0x37ea4e63 -> :sswitch_13
        -0x29637f79 -> :sswitch_12
        -0x25b9fe28 -> :sswitch_11
        -0x1b3d8340 -> :sswitch_10
        -0x143cad1c -> :sswitch_f
        -0x6c936ad -> :sswitch_e
        0x368f3a -> :sswitch_d
        0x38883d -> :sswitch_c
        0x6942258 -> :sswitch_b
        0x758d445 -> :sswitch_a
        0x18e67cc3 -> :sswitch_9
        0x1afceaf6 -> :sswitch_8
        0x31151bf4 -> :sswitch_7
        0x3da6115b -> :sswitch_6
        0x5133cc8e -> :sswitch_5
        0x5c71cfd8 -> :sswitch_4
        0x5de50019 -> :sswitch_3
        0x6cff1594 -> :sswitch_2
        0x7552f1f0 -> :sswitch_1
        0x7de9b437 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAncestorSynopsis(Ljava/lang/String;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->ancestorSynopsis:Ljava/lang/String;

    return-void
.end method

.method public setAncestorTitle(Ljava/lang/String;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->ancestorTitle:Ljava/lang/String;

    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 0

    .line 563
    iput-boolean p1, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->autoPlay:Z

    return-void
.end method

.method public setAutoPlaySeconds(I)V
    .locals 0

    .line 573
    iput p1, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->autoPlaySeconds:I

    return-void
.end method

.method public setAvailabilityDateMessaging(Ljava/lang/String;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->availabilityDateMessaging:Ljava/lang/String;

    return-void
.end method

.method public setBackgroundAsset(Lcom/netflix/model/leafs/PostPlayAsset;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->backgroundAsset:Lcom/netflix/model/leafs/PostPlayAsset;

    return-void
.end method

.method public setDelivery(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 343
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->delivery:Ljava/util/Map;

    return-void
.end method

.method public setDisplayArtAsset(Lcom/netflix/model/leafs/PostPlayAssetImpl;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->displayArtAsset:Lcom/netflix/model/leafs/PostPlayAssetImpl;

    return-void
.end method

.method public setEpisodes(I)V
    .locals 0

    .line 326
    iput p1, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->episodes:I

    return-void
.end method

.method public setExperienceType(Ljava/lang/String;)V
    .locals 0

    .line 593
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->experienceType:Ljava/lang/String;

    return-void
.end method

.method public setImpressionData(Ljava/lang/String;)V
    .locals 0

    .line 543
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->impressionData:Ljava/lang/String;

    return-void
.end method

.method public setLogoAsset(Lcom/netflix/model/leafs/PostPlayAssetImpl;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->logoAsset:Lcom/netflix/model/leafs/PostPlayAssetImpl;

    return-void
.end method

.method public setMaturityRating(Ljava/lang/String;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->maturityRating:Ljava/lang/String;

    return-void
.end method

.method public setNSRE(Z)V
    .locals 0

    .line 526
    iput-boolean p1, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->isNSRE:Z

    return-void
.end method

.method public setNextEpisodeAutoPlay(Z)V
    .locals 0

    .line 583
    iput-boolean p1, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->nextEpisodeAutoPlay:Z

    return-void
.end method

.method public setNextEpisodeSeamless(Z)V
    .locals 0

    .line 602
    iput-boolean p1, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->nextEpisodeSeamless:Z

    return-void
.end method

.method public setRuntime(I)V
    .locals 0

    .line 335
    iput p1, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->runtime:I

    return-void
.end method

.method public setSeamlessStart(I)V
    .locals 0

    .line 607
    iput p1, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->seamlessStart:I

    return-void
.end method

.method public setSeasonSequenceAbbr(Ljava/lang/String;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->seasonSequenceAbbr:Ljava/lang/String;

    return-void
.end method

.method public setSeasons(I)V
    .locals 0

    .line 317
    iput p1, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->seasons:I

    return-void
.end method

.method public setSeasonsLabel(Ljava/lang/String;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->seasonsLabel:Ljava/lang/String;

    return-void
.end method

.method public setSupplementalMessage(Ljava/lang/String;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->supplementalMessage:Ljava/lang/String;

    return-void
.end method

.method public setSynopsis(Ljava/lang/String;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->synopsis:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->type:Ljava/lang/String;

    return-void
.end method

.method public setUserThumbRating(I)V
    .locals 0

    return-void
.end method

.method public setVideoId(Ljava/lang/Integer;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->videoId:Ljava/lang/Integer;

    return-void
.end method

.method public setYear(Ljava/lang/Integer;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayItemImpl;->year:Ljava/lang/Integer;

    return-void
.end method
