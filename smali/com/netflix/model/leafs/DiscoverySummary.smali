.class public Lcom/netflix/model/leafs/DiscoverySummary;
.super Ljava/lang/Object;
.source "DiscoverySummary.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonMerger;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonPopulator;
.implements Lcom/netflix/model/branches/FalkorObject;


# static fields
.field private static final TAG:Ljava/lang/String; = "DiscoverySummary"


# instance fields
.field private collectionId:I

.field private storyArt:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private trackId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPivotBoxartUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/netflix/model/leafs/DiscoverySummary;->storyArt:Ljava/lang/String;

    return-object v0
.end method

.method public getPivotCollectionId()J
    .locals 2

    .prologue
    .line 70
    iget v0, p0, Lcom/netflix/model/leafs/DiscoverySummary;->collectionId:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getPivotTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/netflix/model/leafs/DiscoverySummary;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/netflix/model/leafs/DiscoverySummary;->trackId:I

    return v0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 5

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 54
    sget-boolean v1, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v1, :cond_0

    .line 55
    const-string/jumbo v1, "DiscoverySummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Populating with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

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

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    move v0, v2

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 61
    :pswitch_0
    invoke-static {v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getAsIntSafe(Lcom/google/gson/JsonElement;)I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/DiscoverySummary;->collectionId:I

    goto :goto_0

    .line 60
    :sswitch_0
    const-string/jumbo v4, "collectionId"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "storyArt"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "title"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v4, "trackId"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    .line 62
    :pswitch_1
    invoke-static {v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getAsStringSafe(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/DiscoverySummary;->storyArt:Ljava/lang/String;

    goto :goto_0

    .line 63
    :pswitch_2
    invoke-static {v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getAsStringSafe(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/DiscoverySummary;->title:Ljava/lang/String;

    goto :goto_0

    .line 64
    :pswitch_3
    invoke-static {v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getAsIntSafe(Lcom/google/gson/JsonElement;)I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/DiscoverySummary;->trackId:I

    goto :goto_0

    .line 67
    :cond_2
    return-void

    .line 60
    :sswitch_data_0
    .sparse-switch
        -0x3f9f2c3a -> :sswitch_3
        0x6942258 -> :sswitch_2
        0x61848859 -> :sswitch_0
        0x6662692e -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public set(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 28
    sget-boolean v2, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v2, :cond_0

    .line 29
    const-string/jumbo v2, "DiscoverySummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Populating with: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 48
    :goto_1
    return v0

    .line 32
    :sswitch_0
    const-string/jumbo v3, "collectionId"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "storyArt"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "title"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v3, "trackId"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    .line 34
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/DiscoverySummary;->collectionId:I

    :goto_2
    move v0, v1

    .line 48
    goto :goto_1

    .line 37
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/DiscoverySummary;->storyArt:Ljava/lang/String;

    goto :goto_2

    .line 40
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/DiscoverySummary;->title:Ljava/lang/String;

    goto :goto_2

    .line 43
    :pswitch_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/DiscoverySummary;->trackId:I

    goto :goto_2

    .line 32
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3f9f2c3a -> :sswitch_3
        0x6942258 -> :sswitch_2
        0x61848859 -> :sswitch_0
        0x6662692e -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
