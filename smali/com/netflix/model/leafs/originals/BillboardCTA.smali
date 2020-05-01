.class public Lcom/netflix/model/leafs/originals/BillboardCTA;
.super Ljava/lang/Object;
.source "BillboardCTA.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonMerger;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonPopulator;


# static fields
.field private static final TAG:Ljava/lang/String; = "BillboardCTA"


# instance fields
.field private bookmarkPosition:Ljava/lang/String;

.field private ignoreBookmark:Ljava/lang/Boolean;

.field private name:Ljava/lang/String;

.field private sequenceNumber:Ljava/lang/String;

.field private suppressPostPlay:Ljava/lang/Boolean;

.field private type:Ljava/lang/String;

.field private videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/JsonElement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->populate(Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/model/leafs/originals/BillboardCTA;->bookmarkPosition:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/model/leafs/originals/BillboardCTA;->ignoreBookmark:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/netflix/model/leafs/originals/BillboardCTA;->name:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/model/leafs/originals/BillboardCTA;->sequenceNumber:Ljava/lang/String;

    iput-object p5, p0, Lcom/netflix/model/leafs/originals/BillboardCTA;->suppressPostPlay:Ljava/lang/Boolean;

    iput-object p6, p0, Lcom/netflix/model/leafs/originals/BillboardCTA;->type:Ljava/lang/String;

    iput-object p7, p0, Lcom/netflix/model/leafs/originals/BillboardCTA;->videoId:Ljava/lang/String;

    return-void
.end method

.method public static getListOfActions(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/leafs/originals/BillboardCTA;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    :goto_0
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/netflix/model/leafs/originals/BillboardCTA;

    invoke-direct {v0}, Lcom/netflix/model/leafs/originals/BillboardCTA;-><init>()V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-static {v0, p0, v2, v3, v4}, Lcom/netflix/falkor/BranchNodeUtils;->merge(Lcom/netflix/mediaclient/servicemgr/interface_/JsonMerger;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;ZI)Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getListOfActions(Lcom/google/gson/JsonElement;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/leafs/originals/BillboardCTA;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    new-instance v3, Lcom/netflix/model/leafs/originals/BillboardCTA;

    invoke-direct {v3, v0}, Lcom/netflix/model/leafs/originals/BillboardCTA;-><init>(Lcom/google/gson/JsonElement;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public getBookmarkPosition()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardCTA;->bookmarkPosition:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardCTA;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSequenceNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardCTA;->sequenceNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSuppressPostPlay()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardCTA;->suppressPostPlay:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardCTA;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardCTA;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public ignoreBookmark()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardCTA;->ignoreBookmark:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 5

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    sget-boolean v1, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BillboardCTA"

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

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

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

    :pswitch_0
    invoke-static {v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getAsStringSafe(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardCTA;->name:Ljava/lang/String;

    goto :goto_0

    :sswitch_0
    const-string/jumbo v4, "name"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "videoId"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "suppressPostPlay"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v4, "type"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v4, "ignoreBookmark"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v4, "sequenceNumber"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v4, "bookmarkPosition"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getAsStringSafe(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardCTA;->videoId:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    invoke-static {v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getAsBoolSafe(Lcom/google/gson/JsonElement;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardCTA;->suppressPostPlay:Ljava/lang/Boolean;

    goto/16 :goto_0

    :pswitch_3
    invoke-static {v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getAsStringSafe(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardCTA;->type:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_4
    invoke-static {v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getAsBoolSafe(Lcom/google/gson/JsonElement;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardCTA;->ignoreBookmark:Ljava/lang/Boolean;

    goto/16 :goto_0

    :pswitch_5
    invoke-static {v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getAsStringSafe(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardCTA;->sequenceNumber:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_6
    invoke-static {v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getAsStringSafe(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardCTA;->bookmarkPosition:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6d10f381 -> :sswitch_6
        -0x50b45596 -> :sswitch_5
        0x337a8b -> :sswitch_0
        0x368f3a -> :sswitch_3
        0x1afceaf6 -> :sswitch_1
        0x3b441528 -> :sswitch_4
        0x4432cdc9 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public set(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-boolean v2, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BillboardCTA"

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

    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    :goto_0
    packed-switch v2, :pswitch_data_0

    :goto_1
    return v0

    :sswitch_0
    const-string/jumbo v3, "name"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "videoId"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "suppressPostPlay"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v3, "type"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v3, "ignoreBookmark"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v3, "sequenceNumber"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v3, "bookmarkPosition"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x6

    goto :goto_0

    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardCTA;->name:Ljava/lang/String;

    :goto_2
    move v0, v1

    goto :goto_1

    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardCTA;->videoId:Ljava/lang/String;

    goto :goto_2

    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardCTA;->suppressPostPlay:Ljava/lang/Boolean;

    goto :goto_2

    :pswitch_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardCTA;->type:Ljava/lang/String;

    goto :goto_2

    :pswitch_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardCTA;->ignoreBookmark:Ljava/lang/Boolean;

    goto :goto_2

    :pswitch_5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardCTA;->sequenceNumber:Ljava/lang/String;

    goto :goto_2

    :pswitch_6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardCTA;->bookmarkPosition:Ljava/lang/String;

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6d10f381 -> :sswitch_6
        -0x50b45596 -> :sswitch_5
        0x337a8b -> :sswitch_0
        0x368f3a -> :sswitch_3
        0x1afceaf6 -> :sswitch_1
        0x3b441528 -> :sswitch_4
        0x4432cdc9 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
