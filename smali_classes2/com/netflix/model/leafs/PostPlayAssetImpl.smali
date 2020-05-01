.class public Lcom/netflix/model/leafs/PostPlayAssetImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DocumentsProvider;
.implements Lcom/netflix/model/leafs/PostPlayAsset;


# static fields
.field private static final TAG:Ljava/lang/String; = "PostPlayAsset"


# instance fields
.field private assetType:Ljava/lang/String;

.field private height:I

.field private isBadged:Z

.field private tone:Ljava/lang/String;

.field private type:Lcom/netflix/model/leafs/PostPlayAsset$Type;

.field private url:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/netflix/model/leafs/PostPlayAsset$Type;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/netflix/model/leafs/PostPlayAssetImpl;-><init>(Lcom/netflix/model/leafs/PostPlayAsset$Type;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method public constructor <init>(Lcom/netflix/model/leafs/PostPlayAsset$Type;Lcom/google/gson/JsonElement;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/netflix/model/leafs/PostPlayAssetImpl;->width:I

    .line 22
    iput v0, p0, Lcom/netflix/model/leafs/PostPlayAssetImpl;->height:I

    .line 23
    iput-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayAssetImpl;->isBadged:Z

    .line 31
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayAssetImpl;->type:Lcom/netflix/model/leafs/PostPlayAsset$Type;

    if-eqz p2, :cond_0

    .line 33
    invoke-virtual {p0, p2}, Lcom/netflix/model/leafs/PostPlayAssetImpl;->populate(Lcom/google/gson/JsonElement;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAssetType()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayAssetImpl;->assetType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayAssetImpl;->height:I

    return v0
.end method

.method public getTone()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayAssetImpl;->tone:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/netflix/model/leafs/PostPlayAsset$Type;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayAssetImpl;->type:Lcom/netflix/model/leafs/PostPlayAsset$Type;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayAssetImpl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayAssetImpl;->width:I

    return v0
.end method

.method public isBadged()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayAssetImpl;->isBadged:Z

    return v0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 9

    .line 40
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 45
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 46
    instance-of v2, v1, Lcom/google/gson/JsonNull;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 47
    :cond_0
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
    const-string v3, "assetType"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_1
    const-string v3, "width"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_2
    const-string v3, "tone"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_3
    const-string v3, "url"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_4
    const-string v3, "isBadged"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_5
    const-string v3, "height"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x3

    :cond_1
    :goto_1
    if-eqz v2, :cond_8

    if-eq v2, v8, :cond_7

    if-eq v2, v7, :cond_6

    if-eq v2, v6, :cond_5

    if-eq v2, v5, :cond_4

    if-eq v2, v4, :cond_2

    goto :goto_0

    .line 53
    :cond_2
    invoke-static {v1}, Lo/adN;->e(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dark"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const-string v1, "light"

    :goto_2
    iput-object v1, p0, Lcom/netflix/model/leafs/PostPlayAssetImpl;->tone:Ljava/lang/String;

    goto/16 :goto_0

    .line 52
    :cond_4
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayAssetImpl;->isBadged:Z

    goto/16 :goto_0

    .line 51
    :cond_5
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/PostPlayAssetImpl;->height:I

    goto/16 :goto_0

    .line 50
    :cond_6
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/PostPlayAssetImpl;->width:I

    goto/16 :goto_0

    .line 49
    :cond_7
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayAssetImpl;->assetType:Ljava/lang/String;

    goto/16 :goto_0

    .line 48
    :cond_8
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayAssetImpl;->url:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x48c76ed9 -> :sswitch_5
        -0x2b123515 -> :sswitch_4
        0x1c56f -> :sswitch_3
        0x366972 -> :sswitch_2
        0x6be2dc6 -> :sswitch_1
        0x4e65f64a -> :sswitch_0
    .end sparse-switch
.end method

.method public setAssetType(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayAssetImpl;->assetType:Ljava/lang/String;

    return-void
.end method

.method public setBadged(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/netflix/model/leafs/PostPlayAssetImpl;->isBadged:Z

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 101
    iput p1, p0, Lcom/netflix/model/leafs/PostPlayAssetImpl;->height:I

    return-void
.end method

.method public setTone(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayAssetImpl;->tone:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/netflix/model/leafs/PostPlayAsset$Type;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayAssetImpl;->type:Lcom/netflix/model/leafs/PostPlayAsset$Type;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayAssetImpl;->url:Ljava/lang/String;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/netflix/model/leafs/PostPlayAssetImpl;->width:I

    return-void
.end method
