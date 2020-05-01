.class public Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;
.super Lo/BlockedNumberContract;
.source ""

# interfaces
.implements Lo/agj;
.implements Lo/DocumentsProvider;
.implements Lcom/netflix/model/leafs/originals/BillboardSummary;


# static fields
.field private static final TAG:Ljava/lang/String; = "BillboardSummary"


# instance fields
.field private actionToken:Ljava/lang/String;

.field private actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/BillboardCTA;",
            ">;"
        }
    .end annotation
.end field

.field private assets:Lcom/netflix/model/leafs/originals/BillboardAssetsHolder;

.field private availabilityDates:Lcom/netflix/model/leafs/originals/BillboardAvailabilityDates;

.field private awardTrackId:Ljava/lang/String;

.field private final badgeKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private billboardTheme:Ljava/lang/String;

.field private billboardType:Ljava/lang/String;

.field private highlightColor:Ljava/lang/Integer;

.field private id:Ljava/lang/String;

.field private impressionToken:Ljava/lang/String;

.field private isAward:Z

.field private isOriginal:Z

.field private maturityRating:Ljava/lang/String;

.field private phase:Lcom/netflix/model/leafs/originals/BillboardPhase;

.field private supplementalMessage:Ljava/lang/String;

.field private synopsis:Ljava/lang/String;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/ListOfTagSummary;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private uiLabel:Ljava/lang/String;

.field private videoAssets:Lcom/netflix/model/leafs/originals/VideoAssets;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Lo/BlockedNumberContract;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->badgeKeys:Ljava/util/List;

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->highlightColor:Ljava/lang/Integer;

    return-void
.end method

.method private static parseColor(Lcom/google/gson/JsonElement;)Ljava/lang/Integer;
    .locals 6

    .line 273
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 277
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->b:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "BillboardSummary"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v4

    const-string p0, "%s: can\'t recognize color %s"

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v2, p0, v0}, Lo/SpinnerAdapter;->a(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getActionToken()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->actionToken:Ljava/lang/String;

    return-object v0
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/BillboardCTA;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->actions:Ljava/util/List;

    return-object v0
.end method

.method public getAvailabilityDates()Lcom/netflix/model/leafs/originals/BillboardAvailabilityDates;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->availabilityDates:Lcom/netflix/model/leafs/originals/BillboardAvailabilityDates;

    return-object v0
.end method

.method public getAwardTrackId()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->awardTrackId:Ljava/lang/String;

    return-object v0
.end method

.method public getAwardsHeadline()Lcom/netflix/model/leafs/originals/BillboardAsset;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->assets:Lcom/netflix/model/leafs/originals/BillboardAssetsHolder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardAssetsHolder;->getAwardsHeadline()Lcom/netflix/model/leafs/originals/BillboardAwardsHeadline;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getBackground()Lcom/netflix/model/leafs/originals/BillboardAsset;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->assets:Lcom/netflix/model/leafs/originals/BillboardAssetsHolder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardAssetsHolder;->getBackground()Lcom/netflix/model/leafs/originals/BillboardBackgroundImpl;

    move-result-object v0

    :goto_0
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

    .line 123
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->badgeKeys:Ljava/util/List;

    return-object v0
.end method

.method public getBillboardTheme()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->billboardTheme:Ljava/lang/String;

    return-object v0
.end method

.method public getBillboardType()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->billboardType:Ljava/lang/String;

    return-object v0
.end method

.method public getDateBadge()Lcom/netflix/model/leafs/originals/BillboardAsset;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->assets:Lcom/netflix/model/leafs/originals/BillboardAssetsHolder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardAssetsHolder;->getDateBadge()Lcom/netflix/model/leafs/originals/BillboardDateBadge;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getHighlightColor()Ljava/lang/Integer;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->highlightColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getHorizontalBackground()Lcom/netflix/model/leafs/originals/BillboardAsset;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->assets:Lcom/netflix/model/leafs/originals/BillboardAssetsHolder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardAssetsHolder;->getHorizontalBackground()Lcom/netflix/model/leafs/originals/HorizontalBillboardBackground;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImpressionToken()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->impressionToken:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Lcom/netflix/model/leafs/originals/BillboardAsset;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->assets:Lcom/netflix/model/leafs/originals/BillboardAssetsHolder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardAssetsHolder;->getLogo()Lcom/netflix/model/leafs/originals/BillboardLogo;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getMaturityRating()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->maturityRating:Ljava/lang/String;

    return-object v0
.end method

.method public getPhase()Lcom/netflix/model/leafs/originals/BillboardPhase;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->phase:Lcom/netflix/model/leafs/originals/BillboardPhase;

    return-object v0
.end method

.method public getSupplementalMessage()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->supplementalMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getSynopsis()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->synopsis:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/ListOfTagSummary;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUiLabel()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->uiLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoAssets()Lcom/netflix/model/leafs/originals/VideoAssets;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->videoAssets:Lcom/netflix/model/leafs/originals/VideoAssets;

    return-object v0
.end method

.method public isAward()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->isAward:Z

    return v0
.end method

.method public isOriginal()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->isOriginal:Z

    return v0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 6

    .line 196
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 200
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 201
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 202
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v3, "badgeKeys"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "isAward"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x7

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "awardTrackId"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "synopsis"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x3

    goto/16 :goto_1

    :sswitch_4
    const-string v3, "actionToken"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0x10

    goto/16 :goto_1

    :sswitch_5
    const-string v3, "maturityRating"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_6
    const-string v3, "impressionToken"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0xf

    goto/16 :goto_1

    :sswitch_7
    const-string v3, "isOriginal"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto/16 :goto_1

    :sswitch_8
    const-string v3, "videoAssets"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0x13

    goto/16 :goto_1

    :sswitch_9
    const-string v3, "supplementalMessage"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x4

    goto/16 :goto_1

    :sswitch_a
    const-string v3, "title"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    goto/16 :goto_1

    :sswitch_b
    const-string v3, "phase"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_c
    const-string v3, "tags"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0x11

    goto :goto_1

    :sswitch_d
    const-string v3, "id"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_e
    const-string v3, "billboardType"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0xb

    goto :goto_1

    :sswitch_f
    const-string v3, "availabilityDates"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_10
    const-string v3, "uiLabel"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0x12

    goto :goto_1

    :sswitch_11
    const-string v3, "billboardTheme"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0xa

    goto :goto_1

    :sswitch_12
    const-string v3, "actions"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0xe

    goto :goto_1

    :sswitch_13
    const-string v3, "colors"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0x14

    goto :goto_1

    :sswitch_14
    const-string v3, "assets"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0xd

    :cond_1
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 256
    :pswitch_0
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "highlightColor"

    .line 259
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->parseColor(Lcom/google/gson/JsonElement;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->highlightColor:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 251
    :pswitch_1
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    const-class v0, Lcom/google/gson/Gson;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-class v2, Lcom/netflix/model/leafs/originals/VideoAssets;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/originals/VideoAssets;

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->videoAssets:Lcom/netflix/model/leafs/originals/VideoAssets;

    goto/16 :goto_0

    .line 249
    :pswitch_2
    invoke-static {v1}, Lo/adN;->e(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->uiLabel:Ljava/lang/String;

    goto/16 :goto_0

    .line 248
    :pswitch_3
    invoke-static {v1}, Lcom/netflix/model/leafs/originals/ListOfTagSummaryImpl;->getListOfTags(Lcom/google/gson/JsonElement;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->tags:Ljava/util/List;

    goto/16 :goto_0

    .line 247
    :pswitch_4
    invoke-static {v1}, Lo/adN;->e(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->actionToken:Ljava/lang/String;

    goto/16 :goto_0

    .line 246
    :pswitch_5
    invoke-static {v1}, Lo/adN;->e(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->impressionToken:Ljava/lang/String;

    goto/16 :goto_0

    .line 237
    :pswitch_6
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->actions:Ljava/util/List;

    .line 239
    const-class v0, Lcom/google/gson/Gson;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    .line 240
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    .line 241
    :goto_2
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-ge v4, v2, :cond_0

    .line 242
    iget-object v2, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->actions:Ljava/util/List;

    invoke-virtual {v1, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    const-class v5, Lcom/netflix/model/leafs/originals/BillboardCTA;

    invoke-virtual {v0, v3, v5}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 235
    :pswitch_7
    new-instance v0, Lcom/netflix/model/leafs/originals/BillboardAssetsHolder;

    invoke-direct {v0, v1}, Lcom/netflix/model/leafs/originals/BillboardAssetsHolder;-><init>(Lcom/google/gson/JsonElement;)V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->assets:Lcom/netflix/model/leafs/originals/BillboardAssetsHolder;

    goto/16 :goto_0

    .line 228
    :pswitch_8
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 230
    :goto_3
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    if-ge v4, v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->badgeKeys:Ljava/util/List;

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 226
    :pswitch_9
    invoke-static {v1}, Lo/adN;->e(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->billboardType:Ljava/lang/String;

    goto/16 :goto_0

    .line 225
    :pswitch_a
    invoke-static {v1}, Lo/adN;->e(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->billboardTheme:Ljava/lang/String;

    goto/16 :goto_0

    .line 224
    :pswitch_b
    invoke-static {v1}, Lo/adN;->e(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->awardTrackId:Ljava/lang/String;

    goto/16 :goto_0

    .line 223
    :pswitch_c
    invoke-static {v1}, Lo/adN;->e(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->maturityRating:Ljava/lang/String;

    goto/16 :goto_0

    .line 222
    :pswitch_d
    invoke-static {v1}, Lo/adN;->c(Lcom/google/gson/JsonElement;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->isAward:Z

    goto/16 :goto_0

    .line 216
    :pswitch_e
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    const-class v0, Lcom/google/gson/Gson;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-class v2, Lcom/netflix/model/leafs/originals/BillboardAvailabilityDates;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/originals/BillboardAvailabilityDates;

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->availabilityDates:Lcom/netflix/model/leafs/originals/BillboardAvailabilityDates;

    goto/16 :goto_0

    .line 210
    :pswitch_f
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    const-class v0, Lcom/google/gson/Gson;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-class v2, Lcom/netflix/model/leafs/originals/BillboardPhase;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/originals/BillboardPhase;

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->phase:Lcom/netflix/model/leafs/originals/BillboardPhase;

    goto/16 :goto_0

    .line 207
    :pswitch_10
    invoke-static {v1}, Lo/adN;->e(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->supplementalMessage:Ljava/lang/String;

    goto/16 :goto_0

    .line 206
    :pswitch_11
    invoke-static {v1}, Lo/adN;->e(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->synopsis:Ljava/lang/String;

    goto/16 :goto_0

    .line 205
    :pswitch_12
    invoke-static {v1}, Lo/adN;->e(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->title:Ljava/lang/String;

    goto/16 :goto_0

    .line 204
    :pswitch_13
    invoke-static {v1}, Lo/adN;->c(Lcom/google/gson/JsonElement;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->isOriginal:Z

    goto/16 :goto_0

    .line 203
    :pswitch_14
    invoke-static {v1}, Lo/adN;->e(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;->id:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x53ef8c7d -> :sswitch_14
        -0x50c14290 -> :sswitch_13
        -0x453fb703 -> :sswitch_12
        -0x3dd70236 -> :sswitch_11
        -0x1b3d8340 -> :sswitch_10
        -0x1815de16 -> :sswitch_f
        -0xa407ce7 -> :sswitch_e
        0xd1b -> :sswitch_d
        0x363419 -> :sswitch_c
        0x65b097b -> :sswitch_b
        0x6942258 -> :sswitch_a
        0x18e67cc3 -> :sswitch_9
        0x1f64ebde -> :sswitch_8
        0x22ea311b -> :sswitch_7
        0x2e8a1570 -> :sswitch_6
        0x5133cc8e -> :sswitch_5
        0x5dc8bd63 -> :sswitch_4
        0x6cff1594 -> :sswitch_3
        0x6e7afea9 -> :sswitch_2
        0x7a772753 -> :sswitch_1
        0x7de9b437 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
