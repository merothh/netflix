.class public Lcom/netflix/model/leafs/PostPlayImpression;
.super Lo/BlockedNumberContract;
.source ""

# interfaces
.implements Lo/DocumentsProvider;
.implements Lo/agj;


# instance fields
.field private TAG:Ljava/lang/String;

.field success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lo/BlockedNumberContract;-><init>()V

    const-string v0, "PostPlayImpression"

    .line 19
    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayImpression;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isSuccess()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayImpression;->success:Z

    return v0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 5

    .line 25
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 30
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 31
    instance-of v2, v1, Lcom/google/gson/JsonNull;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x6f4abffd

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "success"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    goto :goto_0

    .line 36
    :cond_3
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayImpression;->success:Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/netflix/model/leafs/PostPlayImpression;->success:Z

    return-void
.end method
