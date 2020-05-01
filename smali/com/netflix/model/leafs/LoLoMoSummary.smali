.class public Lcom/netflix/model/leafs/LoLoMoSummary;
.super Ljava/lang/Object;
.source "LoLoMoSummary.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonMerger;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonPopulator;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/LoLoMo;


# static fields
.field private static final TAG:Ljava/lang/String; = "LoLoMoSummary"


# instance fields
.field private mGenreId:Ljava/lang/String;

.field private mNumLoMos:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "length"
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/leafs/LoLoMoSummary;->mGenreId:Ljava/lang/String;

    return-object v0
.end method

.method public getLolomosId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumLoMos()I
    .locals 1

    iget v0, p0, Lcom/netflix/model/leafs/LoLoMoSummary;->mNumLoMos:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/leafs/LoLoMoSummary;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->decodeHtmlEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->STANDARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    return-object v0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 5

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    sget-boolean v1, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "LoLoMoSummary"

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

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    move v1, v2

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/LoLoMoSummary;->mTitle:Ljava/lang/String;

    goto :goto_0

    :sswitch_0
    const-string/jumbo v4, "title"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "length"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :pswitch_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/LoLoMoSummary;->mNumLoMos:I

    goto :goto_0

    :cond_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x41f1c51a -> :sswitch_1
        0x6942258 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public set(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    :goto_1
    return v0

    :sswitch_0
    const-string/jumbo v3, "title"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "length"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    goto :goto_0

    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/LoLoMoSummary;->mTitle:Ljava/lang/String;

    :goto_2
    move v0, v1

    goto :goto_1

    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/LoLoMoSummary;->mNumLoMos:I

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x41f1c51a -> :sswitch_1
        0x6942258 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setGenreId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/model/leafs/LoLoMoSummary;->mGenreId:Ljava/lang/String;

    return-void
.end method
