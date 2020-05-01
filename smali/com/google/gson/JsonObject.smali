.class public final Lcom/google/gson/JsonObject;
.super Lcom/google/gson/JsonElement;


# instance fields
.field private final members:Lcom/google/gson/internal/StringMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/StringMap",
            "<",
            "Lcom/google/gson/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    new-instance v0, Lcom/google/gson/internal/StringMap;

    invoke-direct {v0}, Lcom/google/gson/internal/StringMap;-><init>()V

    iput-object v0, p0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/StringMap;

    return-void
.end method

.method private createJsonElement(Ljava/lang/Object;)Lcom/google/gson/JsonElement;
    .locals 1

    if-nez p1, :cond_0

    sget-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V
    .locals 2

    if-nez p2, :cond_0

    sget-object p2, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    :cond_0
    iget-object v1, p0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/StringMap;

    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0, p2}, Lcom/google/gson/internal/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/google/gson/JsonObject;->createJsonElement(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/google/gson/JsonObject;->createJsonElement(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonElement;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/StringMap;

    invoke-virtual {v0}, Lcom/google/gson/internal/StringMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/gson/JsonObject;

    iget-object v0, p1, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/StringMap;

    iget-object v1, p0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/StringMap;

    invoke-virtual {v0, v1}, Lcom/google/gson/internal/StringMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Lcom/google/gson/JsonElement;
    .locals 1

    iget-object v0, p0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/StringMap;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/StringMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/StringMap;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/StringMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;
    .locals 1

    iget-object v0, p0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/StringMap;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/StringMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonArray;

    return-object v0
.end method

.method public getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;
    .locals 1

    iget-object v0, p0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/StringMap;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/StringMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method public getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;
    .locals 1

    iget-object v0, p0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/StringMap;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/StringMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonPrimitive;

    return-object v0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/StringMap;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/StringMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/StringMap;

    invoke-virtual {v0}, Lcom/google/gson/internal/StringMap;->hashCode()I

    move-result v0

    return v0
.end method
