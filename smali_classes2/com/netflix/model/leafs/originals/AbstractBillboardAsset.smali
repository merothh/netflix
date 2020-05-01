.class public abstract Lcom/netflix/model/leafs/originals/AbstractBillboardAsset;
.super Lo/BlockedNumberContract;
.source ""

# interfaces
.implements Lo/DocumentsProvider;
.implements Lo/agj;
.implements Lcom/netflix/model/leafs/originals/BillboardAsset;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private artWorkType:Ljava/lang/String;

.field private height:Ljava/lang/Integer;

.field private imageKey:Ljava/lang/String;

.field private tone:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private width:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/google/gson/JsonElement;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Lo/BlockedNumberContract;-><init>()V

    .line 34
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/AbstractBillboardAsset;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/AbstractBillboardAsset;->TAG:Ljava/lang/String;

    .line 35
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/originals/AbstractBillboardAsset;->populate(Lcom/google/gson/JsonElement;)V

    return-void
.end method


# virtual methods
.method public getArtWorkType()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/AbstractBillboardAsset;->artWorkType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()Ljava/lang/Integer;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/AbstractBillboardAsset;->height:Ljava/lang/Integer;

    return-object v0
.end method

.method public getImageKey()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/AbstractBillboardAsset;->imageKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTone()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/AbstractBillboardAsset;->tone:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/AbstractBillboardAsset;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()Ljava/lang/Integer;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/AbstractBillboardAsset;->width:Ljava/lang/Integer;

    return-object v0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 9

    .line 72
    instance-of v0, p1, Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_8

    .line 73
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 78
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 79
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "artWorkType"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_1
    const-string v3, "width"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "tone"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_3
    const-string v3, "url"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_4
    const-string v3, "imageKey"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_5
    const-string v3, "height"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    :cond_0
    :goto_1
    if-eqz v2, :cond_7

    if-eq v2, v8, :cond_6

    if-eq v2, v7, :cond_5

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    goto :goto_0

    .line 85
    :cond_1
    invoke-static {v1}, Lo/adN;->e(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/AbstractBillboardAsset;->imageKey:Ljava/lang/String;

    goto :goto_0

    .line 84
    :cond_2
    invoke-static {v1}, Lo/adN;->e(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/AbstractBillboardAsset;->artWorkType:Ljava/lang/String;

    goto :goto_0

    .line 83
    :cond_3
    invoke-static {v1}, Lo/adN;->e(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "light"

    invoke-static {v0, v1}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const-string v1, "dark"

    :goto_2
    iput-object v1, p0, Lcom/netflix/model/leafs/originals/AbstractBillboardAsset;->tone:Ljava/lang/String;

    goto/16 :goto_0

    .line 82
    :cond_5
    invoke-static {v1}, Lo/adN;->d(Lcom/google/gson/JsonElement;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/AbstractBillboardAsset;->height:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 81
    :cond_6
    invoke-static {v1}, Lo/adN;->d(Lcom/google/gson/JsonElement;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/AbstractBillboardAsset;->width:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 80
    :cond_7
    invoke-static {v1}, Lo/adN;->e(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/AbstractBillboardAsset;->url:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x48c76ed9 -> :sswitch_5
        -0x333cc4fc -> :sswitch_4
        0x1c56f -> :sswitch_3
        0x366972 -> :sswitch_2
        0x6be2dc6 -> :sswitch_1
        0x684ca56e -> :sswitch_0
    .end sparse-switch
.end method
