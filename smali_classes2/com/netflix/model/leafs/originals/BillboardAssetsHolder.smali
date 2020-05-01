.class Lcom/netflix/model/leafs/originals/BillboardAssetsHolder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DocumentsProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "Assets"


# instance fields
.field private awardsHeadline:Lcom/netflix/model/leafs/originals/BillboardAwardsHeadline;

.field private background:Lcom/netflix/model/leafs/originals/BillboardBackgroundImpl;

.field private dateBadge:Lcom/netflix/model/leafs/originals/BillboardDateBadge;

.field private horizontalBackground:Lcom/netflix/model/leafs/originals/HorizontalBillboardBackground;

.field private logo:Lcom/netflix/model/leafs/originals/BillboardLogo;


# direct methods
.method public constructor <init>(Lcom/google/gson/JsonElement;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/originals/BillboardAssetsHolder;->populate(Lcom/google/gson/JsonElement;)V

    return-void
.end method


# virtual methods
.method public getAwardsHeadline()Lcom/netflix/model/leafs/originals/BillboardAwardsHeadline;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssetsHolder;->awardsHeadline:Lcom/netflix/model/leafs/originals/BillboardAwardsHeadline;

    return-object v0
.end method

.method public getBackground()Lcom/netflix/model/leafs/originals/BillboardBackgroundImpl;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssetsHolder;->background:Lcom/netflix/model/leafs/originals/BillboardBackgroundImpl;

    return-object v0
.end method

.method public getDateBadge()Lcom/netflix/model/leafs/originals/BillboardDateBadge;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssetsHolder;->dateBadge:Lcom/netflix/model/leafs/originals/BillboardDateBadge;

    return-object v0
.end method

.method public getHorizontalBackground()Lcom/netflix/model/leafs/originals/HorizontalBillboardBackground;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssetsHolder;->horizontalBackground:Lcom/netflix/model/leafs/originals/HorizontalBillboardBackground;

    return-object v0
.end method

.method public getLogo()Lcom/netflix/model/leafs/originals/BillboardLogo;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssetsHolder;->logo:Lcom/netflix/model/leafs/originals/BillboardLogo;

    return-object v0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 8

    .line 54
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 59
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 60
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "awardsHeadline"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_1
    const-string v3, "horizontalBackground"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_2
    const-string v3, "logo"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_3
    const-string v3, "dateBadge"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_4
    const-string v3, "background"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    :goto_1
    if-eqz v2, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    goto :goto_0

    .line 65
    :cond_1
    new-instance v0, Lcom/netflix/model/leafs/originals/BillboardAwardsHeadline;

    invoke-direct {v0, v1}, Lcom/netflix/model/leafs/originals/BillboardAwardsHeadline;-><init>(Lcom/google/gson/JsonElement;)V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssetsHolder;->awardsHeadline:Lcom/netflix/model/leafs/originals/BillboardAwardsHeadline;

    goto :goto_0

    .line 64
    :cond_2
    new-instance v0, Lcom/netflix/model/leafs/originals/BillboardDateBadge;

    invoke-direct {v0, v1}, Lcom/netflix/model/leafs/originals/BillboardDateBadge;-><init>(Lcom/google/gson/JsonElement;)V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssetsHolder;->dateBadge:Lcom/netflix/model/leafs/originals/BillboardDateBadge;

    goto :goto_0

    .line 63
    :cond_3
    new-instance v0, Lcom/netflix/model/leafs/originals/HorizontalBillboardBackground;

    invoke-direct {v0, v1}, Lcom/netflix/model/leafs/originals/HorizontalBillboardBackground;-><init>(Lcom/google/gson/JsonElement;)V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssetsHolder;->horizontalBackground:Lcom/netflix/model/leafs/originals/HorizontalBillboardBackground;

    goto :goto_0

    .line 62
    :cond_4
    new-instance v0, Lcom/netflix/model/leafs/originals/BillboardBackgroundImpl;

    invoke-direct {v0, v1}, Lcom/netflix/model/leafs/originals/BillboardBackgroundImpl;-><init>(Lcom/google/gson/JsonElement;)V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssetsHolder;->background:Lcom/netflix/model/leafs/originals/BillboardBackgroundImpl;

    goto/16 :goto_0

    .line 61
    :cond_5
    new-instance v0, Lcom/netflix/model/leafs/originals/BillboardLogo;

    invoke-direct {v0, v1}, Lcom/netflix/model/leafs/originals/BillboardLogo;-><init>(Lcom/google/gson/JsonElement;)V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssetsHolder;->logo:Lcom/netflix/model/leafs/originals/BillboardLogo;

    goto/16 :goto_0

    :cond_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4f67aad2 -> :sswitch_4
        -0x1076a76b -> :sswitch_3
        0x32c5ab -> :sswitch_2
        0x5dc9e072 -> :sswitch_1
        0x74eaadaa -> :sswitch_0
    .end sparse-switch
.end method
