.class public Lcom/netflix/model/leafs/PostPlayExperienceImpl;
.super Lo/BlockedNumberContract;
.source ""

# interfaces
.implements Lo/DocumentsProvider;
.implements Lo/agj;
.implements Lcom/netflix/model/leafs/PostPlayExperience;


# static fields
.field private static final TAG:Ljava/lang/String; = "PostPlayExperience"


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

.field private requestId:Ljava/lang/String;

.field private seamlessCountdownSeconds:I

.field private seamlessEnd:I

.field private seasonRenewal:Lcom/netflix/model/leafs/SeasonRenewal;

.field private theme:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0}, Lcom/netflix/model/leafs/PostPlayExperienceImpl;-><init>(Lo/TableLayout;)V

    return-void
.end method

.method public constructor <init>(Lo/TableLayout;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/TableLayout<",
            "+",
            "Lo/Browser;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lo/BlockedNumberContract;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->experienceTitle:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->actions:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->items:Ljava/util/List;

    .line 31
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->proxy:Lo/TableLayout;

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

    .line 125
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 127
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 128
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 129
    new-instance v1, Lcom/netflix/model/leafs/PostPlayActionImpl;

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->proxy:Lo/TableLayout;

    invoke-direct {v1, v2, v3}, Lcom/netflix/model/leafs/PostPlayActionImpl;-><init>(Lcom/google/gson/JsonElement;Lo/TableLayout;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
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

    .line 246
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->actions:Ljava/util/List;

    return-object v0
.end method

.method public getActionsInitialIndex()Ljava/lang/Integer;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->actionsInitialIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAutoPlayAction()Lcom/netflix/model/leafs/PostPlayAction;
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/PostPlayItem;

    .line 299
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

    .line 341
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/PostPlayItem;

    .line 342
    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayItem;->getAutoPlayAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 344
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

    .line 312
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/PostPlayItem;

    .line 313
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

    .line 167
    iget-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->autoplay:Z

    return v0
.end method

.method public getAutoplaySeconds()I
    .locals 1

    .line 177
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->autoplaySeconds:I

    return v0
.end method

.method public getBackgroundAsset()Lcom/netflix/model/leafs/PostPlayAsset;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->backgroundAsset:Lcom/netflix/model/leafs/PostPlayAsset;

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

    .line 233
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->experienceTitle:Ljava/util/List;

    return-object v0
.end method

.method public getImpressionToken()Ljava/lang/String;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->impressionToken:Ljava/lang/String;

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

    .line 260
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->items:Ljava/util/List;

    return-object v0
.end method

.method public getItemsInitialIndex()Ljava/lang/Integer;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->itemsInitialIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLogoAsset()Lcom/netflix/model/leafs/PostPlayAsset;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->logoAsset:Lcom/netflix/model/leafs/PostPlayAsset;

    return-object v0
.end method

.method public getPromotedSupplementalMessage()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->promotedSupplementalMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotedTitle()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->promotedTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotedVideoId()Ljava/lang/Integer;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->promotedVideoId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getSeamlessCountdownSeconds()I
    .locals 1

    .line 265
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->seamlessCountdownSeconds:I

    return v0
.end method

.method public getSeamlessEnd()I
    .locals 1

    .line 274
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->seamlessEnd:I

    return v0
.end method

.method public getSeasonRenewal()Lcom/netflix/model/leafs/SeasonRenewal;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->seasonRenewal:Lcom/netflix/model/leafs/SeasonRenewal;

    return-object v0
.end method

.method public getSeasonRenewalPostPlayItem()Lcom/netflix/model/leafs/PostPlayItem;
    .locals 3

    .line 326
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/PostPlayItem;

    .line 327
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

    .line 158
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->theme:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public isOffline()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 8

    .line 66
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 71
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 72
    instance-of v2, v1, Lcom/google/gson/JsonNull;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 73
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "experienceTitle"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xb

    goto/16 :goto_2

    :sswitch_1
    const-string v2, "promotedSupplementalMessage"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    goto/16 :goto_2

    :sswitch_2
    const-string v2, "promotedVideoId"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    goto/16 :goto_2

    :sswitch_3
    const-string v2, "currentEpisodeSeamlessData"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x10

    goto/16 :goto_2

    :sswitch_4
    const-string v2, "autoplay"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto/16 :goto_2

    :sswitch_5
    const-string v2, "promotedTitle"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    goto/16 :goto_2

    :sswitch_6
    const-string v2, "impressionToken"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x11

    goto/16 :goto_2

    :sswitch_7
    const-string v2, "requestId"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto/16 :goto_2

    :sswitch_8
    const-string v2, "actionsInitialIndex"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xc

    goto :goto_2

    :sswitch_9
    const-string v2, "theme"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_2

    :sswitch_a
    const-string v2, "items"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xf

    goto :goto_2

    :sswitch_b
    const-string v2, "autoplaySeconds"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    goto :goto_2

    :sswitch_c
    const-string v2, "type"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_2

    :sswitch_d
    const-string v2, "UUID"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :sswitch_e
    const-string v2, "itemsInitialIndex"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xe

    goto :goto_2

    :sswitch_f
    const-string v2, "seasonRenewal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    goto :goto_2

    :sswitch_10
    const-string v2, "actions"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xd

    goto :goto_2

    :sswitch_11
    const-string v2, "assets"

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

    .line 119
    :pswitch_0
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->impressionToken:Ljava/lang/String;

    goto/16 :goto_0

    .line 111
    :pswitch_1
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v2, "seamlessEnd"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->seamlessEnd:I

    .line 114
    :cond_3
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v2, "seamlessCountdownSeconds"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->seamlessCountdownSeconds:I

    goto/16 :goto_0

    .line 102
    :pswitch_2
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 104
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 105
    :goto_3
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    if-ge v4, v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->items:Ljava/util/List;

    new-instance v2, Lcom/netflix/model/leafs/PostPlayItemImpl;

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    iget-object v5, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->proxy:Lo/TableLayout;

    invoke-direct {v2, v3, v5}, Lcom/netflix/model/leafs/PostPlayItemImpl;-><init>(Lcom/google/gson/JsonElement;Lo/TableLayout;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 100
    :pswitch_3
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->itemsInitialIndex:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 99
    :pswitch_4
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->actions:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->populateCTA(Lcom/google/gson/JsonElement;Ljava/util/List;)V

    goto/16 :goto_0

    .line 98
    :pswitch_5
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->actionsInitialIndex:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 97
    :pswitch_6
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->experienceTitle:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->populateCTA(Lcom/google/gson/JsonElement;Ljava/util/List;)V

    goto/16 :goto_0

    .line 87
    :pswitch_7
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 90
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x4f67aad2

    if-eq v6, v7, :cond_5

    const v7, 0x32c5ab

    if-eq v6, v7, :cond_4

    goto :goto_5

    :cond_4
    const-string v6, "logo"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_6

    :cond_5
    const-string v6, "background"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    goto :goto_6

    :cond_6
    :goto_5
    const/4 v2, -0x1

    :goto_6
    if-eqz v2, :cond_8

    if-eq v2, v5, :cond_7

    goto :goto_4

    .line 92
    :cond_7
    new-instance v2, Lcom/netflix/model/leafs/PostPlayAssetImpl;

    sget-object v6, Lcom/netflix/model/leafs/PostPlayAsset$Type;->LOGO:Lcom/netflix/model/leafs/PostPlayAsset$Type;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    invoke-direct {v2, v6, v1}, Lcom/netflix/model/leafs/PostPlayAssetImpl;-><init>(Lcom/netflix/model/leafs/PostPlayAsset$Type;Lcom/google/gson/JsonElement;)V

    iput-object v2, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->logoAsset:Lcom/netflix/model/leafs/PostPlayAsset;

    goto :goto_4

    .line 91
    :cond_8
    new-instance v2, Lcom/netflix/model/leafs/PostPlayAssetImpl;

    sget-object v6, Lcom/netflix/model/leafs/PostPlayAsset$Type;->BACKGROUND:Lcom/netflix/model/leafs/PostPlayAsset$Type;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    invoke-direct {v2, v6, v1}, Lcom/netflix/model/leafs/PostPlayAssetImpl;-><init>(Lcom/netflix/model/leafs/PostPlayAsset$Type;Lcom/google/gson/JsonElement;)V

    iput-object v2, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->backgroundAsset:Lcom/netflix/model/leafs/PostPlayAsset;

    goto :goto_4

    .line 83
    :pswitch_8
    const-class v0, Lcom/google/gson/Gson;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    .line 84
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-class v2, Lcom/netflix/model/leafs/SeasonRenewal;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/SeasonRenewal;

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->seasonRenewal:Lcom/netflix/model/leafs/SeasonRenewal;

    goto/16 :goto_0

    .line 82
    :pswitch_9
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->promotedSupplementalMessage:Ljava/lang/String;

    goto/16 :goto_0

    .line 81
    :pswitch_a
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->promotedTitle:Ljava/lang/String;

    goto/16 :goto_0

    .line 80
    :pswitch_b
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->promotedVideoId:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 79
    :pswitch_c
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->autoplaySeconds:I

    goto/16 :goto_0

    .line 78
    :pswitch_d
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->autoplay:Z

    goto/16 :goto_0

    .line 77
    :pswitch_e
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->theme:Ljava/lang/String;

    goto/16 :goto_0

    .line 76
    :pswitch_f
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->type:Ljava/lang/String;

    goto/16 :goto_0

    .line 75
    :pswitch_10
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->requestId:Ljava/lang/String;

    goto/16 :goto_0

    .line 74
    :pswitch_11
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->uuid:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x53ef8c7d -> :sswitch_11
        -0x453fb703 -> :sswitch_10
        -0x19a4a0eb -> :sswitch_f
        -0x359832 -> :sswitch_e
        0x27ebbb -> :sswitch_d
        0x368f3a -> :sswitch_c
        0x2f2239c -> :sswitch_b
        0x5fde7c0 -> :sswitch_a
        0x69375c9 -> :sswitch_9
        0x1c3bd58b -> :sswitch_8
        0x295c940a -> :sswitch_7
        0x2e8a1570 -> :sswitch_6
        0x42dcd014 -> :sswitch_5
        0x55cdf963 -> :sswitch_4
        0x6371b043 -> :sswitch_3
        0x67d119b2 -> :sswitch_2
        0x7b1e717f -> :sswitch_1
        0x7ddc2b0e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public setActionsInitialIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->actionsInitialIndex:Ljava/lang/Integer;

    return-void
.end method

.method public setAutoplay(Z)V
    .locals 0

    .line 172
    iput-boolean p1, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->autoplay:Z

    return-void
.end method

.method public setAutoplaySeconds(I)V
    .locals 0

    .line 182
    iput p1, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->autoplaySeconds:I

    return-void
.end method

.method public setBackgroundAsset(Lcom/netflix/model/leafs/PostPlayAsset;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->backgroundAsset:Lcom/netflix/model/leafs/PostPlayAsset;

    return-void
.end method

.method public setImpressionToken(Ljava/lang/String;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->impressionToken:Ljava/lang/String;

    return-void
.end method

.method public setItemsInitialIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->itemsInitialIndex:Ljava/lang/Integer;

    return-void
.end method

.method public setLogoAsset(Lcom/netflix/model/leafs/PostPlayAsset;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->logoAsset:Lcom/netflix/model/leafs/PostPlayAsset;

    return-void
.end method

.method public setPromotedSupplementalMessage(Ljava/lang/String;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->promotedSupplementalMessage:Ljava/lang/String;

    return-void
.end method

.method public setPromotedTitle(Ljava/lang/String;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->promotedTitle:Ljava/lang/String;

    return-void
.end method

.method public setPromotedVideoId(Ljava/lang/Integer;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->promotedVideoId:Ljava/lang/Integer;

    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->requestId:Ljava/lang/String;

    return-void
.end method

.method public setSeamlessCountdownSeconds(I)V
    .locals 0

    .line 269
    iput p1, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->seamlessCountdownSeconds:I

    return-void
.end method

.method public setSeamlessEnd(I)V
    .locals 0

    .line 278
    iput p1, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->seamlessEnd:I

    return-void
.end method

.method public setTheme(Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->theme:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayExperienceImpl;->type:Ljava/lang/String;

    return-void
.end method
