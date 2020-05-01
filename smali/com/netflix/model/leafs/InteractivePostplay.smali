.class public Lcom/netflix/model/leafs/InteractivePostplay;
.super Ljava/lang/Object;
.source "InteractivePostplay.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonMerger;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonPopulator;


# static fields
.field private static final TAG:Ljava/lang/String; = "InteractivePostplay"


# instance fields
.field data:Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/leafs/InteractivePostplay;->data:Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;

    return-object v0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v2, Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;

    invoke-virtual {v0, p1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;

    iput-object v0, p0, Lcom/netflix/model/leafs/InteractivePostplay;->data:Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;

    iget-object v0, p0, Lcom/netflix/model/leafs/InteractivePostplay;->data:Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/model/leafs/InteractivePostplay;->data:Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KONG_POST_PLAY"

    iget-object v2, p0, Lcom/netflix/model/leafs/InteractivePostplay;->data:Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v2, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;

    invoke-virtual {v0, p1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;

    iput-object v0, p0, Lcom/netflix/model/leafs/InteractivePostplay;->data:Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;

    :cond_0
    sget-boolean v0, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "InteractivePostplay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Populating with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public set(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
