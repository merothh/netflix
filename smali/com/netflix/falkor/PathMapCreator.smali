.class public Lcom/netflix/falkor/PathMapCreator;
.super Ljava/lang/Object;
.source "PathMapCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/util/List;)Lcom/google/gson/JsonObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)",
            "Lcom/google/gson/JsonObject;"
        }
    .end annotation

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string/jumbo v1, "_path"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/PQL;

    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Lcom/netflix/falkor/PathMapCreator;->createPathMap(Lcom/google/gson/JsonObject;Lcom/netflix/falkor/PQL;I)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static createPathMap(Lcom/google/gson/JsonObject;Lcom/netflix/falkor/PQL;I)V
    .locals 3

    invoke-virtual {p1}, Lcom/netflix/falkor/PQL;->getKeySegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p2, v0, :cond_1

    const-string/jumbo v0, "_path"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/falkor/PQL;->getKeySegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_2

    invoke-static {p0, p1, p2, v1}, Lcom/netflix/falkor/PathMapCreator;->getOrCreateRangeArray(Lcom/google/gson/JsonObject;Lcom/netflix/falkor/PQL;ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p0, v1}, Lcom/netflix/falkor/PathMapCreator;->getOrCreateJsonObj(Lcom/google/gson/JsonObject;Ljava/lang/Object;)Lcom/google/gson/JsonObject;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    invoke-static {v1, p1, v2}, Lcom/netflix/falkor/PathMapCreator;->createPathMap(Lcom/google/gson/JsonObject;Lcom/netflix/falkor/PQL;I)V

    goto :goto_1

    :cond_3
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_4

    invoke-static {p0, p1, p2, v0}, Lcom/netflix/falkor/PathMapCreator;->getOrCreateRangeArray(Lcom/google/gson/JsonObject;Lcom/netflix/falkor/PQL;ILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {p0, v0}, Lcom/netflix/falkor/PathMapCreator;->getOrCreateJsonObj(Lcom/google/gson/JsonObject;Ljava/lang/Object;)Lcom/google/gson/JsonObject;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-static {v0, p1, v1}, Lcom/netflix/falkor/PathMapCreator;->createPathMap(Lcom/google/gson/JsonObject;Lcom/netflix/falkor/PQL;I)V

    goto :goto_0
.end method

.method private static createRangeArrayNode(Lcom/google/gson/JsonObject;Lcom/netflix/falkor/PQL;ILjava/util/Map;)Lcom/google/gson/JsonObject;
    .locals 4

    const-string/jumbo v0, "from"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const-string/jumbo v1, "to"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No \'to\' parameter in map"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    const-string/jumbo v3, "_rangeFrom"

    invoke-virtual {v2, v3, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string/jumbo v0, "_rangeTo"

    invoke-virtual {v2, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string/jumbo v1, "_rangeValue"

    invoke-virtual {v2, v1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    add-int/lit8 v1, p2, 0x1

    invoke-static {v0, p1, v1}, Lcom/netflix/falkor/PathMapCreator;->createPathMap(Lcom/google/gson/JsonObject;Lcom/netflix/falkor/PQL;I)V

    return-object v2
.end method

.method private static getOrCreateJsonObj(Lcom/google/gson/JsonObject;Ljava/lang/Object;)Lcom/google/gson/JsonObject;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    :cond_0
    return-object v0
.end method

.method private static getOrCreateRangeArray(Lcom/google/gson/JsonObject;Lcom/netflix/falkor/PQL;ILjava/lang/Object;)V
    .locals 2

    const-string/jumbo v0, "_ranges"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    const-string/jumbo v1, "_ranges"

    invoke-virtual {p0, v1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    :cond_0
    check-cast p3, Ljava/util/Map;

    invoke-static {p0, p1, p2, p3}, Lcom/netflix/falkor/PathMapCreator;->createRangeArrayNode(Lcom/google/gson/JsonObject;Lcom/netflix/falkor/PQL;ILjava/util/Map;)Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    return-void
.end method
