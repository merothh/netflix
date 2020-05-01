.class public Lcom/netflix/model/leafs/InteractivePlaybackMoments;
.super Ljava/lang/Object;
.source "InteractivePlaybackMoments.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonMerger;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonPopulator;


# static fields
.field private static final TAG:Ljava/lang/String; = "InteractivePlaybackMoments"


# instance fields
.field data:Lcom/netflix/mediaclient/ui/iko/model/InteractiveMomentsModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/netflix/mediaclient/ui/iko/model/InteractiveMomentsModel;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/netflix/model/leafs/InteractivePlaybackMoments;->data:Lcom/netflix/mediaclient/ui/iko/model/InteractiveMomentsModel;

    return-object v0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 4

    .prologue
    .line 31
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 32
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v2, Lcom/netflix/mediaclient/ui/iko/model/InteractiveMomentsModel;

    invoke-virtual {v0, p1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/model/InteractiveMomentsModel;

    iput-object v0, p0, Lcom/netflix/model/leafs/InteractivePlaybackMoments;->data:Lcom/netflix/mediaclient/ui/iko/model/InteractiveMomentsModel;

    .line 33
    iget-object v0, p0, Lcom/netflix/model/leafs/InteractivePlaybackMoments;->data:Lcom/netflix/mediaclient/ui/iko/model/InteractiveMomentsModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/model/leafs/InteractivePlaybackMoments;->data:Lcom/netflix/mediaclient/ui/iko/model/InteractiveMomentsModel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/model/InteractiveMomentsModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const-string/jumbo v0, "kong"

    iget-object v2, p0, Lcom/netflix/model/leafs/InteractivePlaybackMoments;->data:Lcom/netflix/mediaclient/ui/iko/model/InteractiveMomentsModel;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/iko/model/InteractiveMomentsModel;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v2, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel;

    invoke-virtual {v0, p1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/model/InteractiveMomentsModel;

    iput-object v0, p0, Lcom/netflix/model/leafs/InteractivePlaybackMoments;->data:Lcom/netflix/mediaclient/ui/iko/model/InteractiveMomentsModel;

    .line 41
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v0, :cond_1

    .line 42
    const-string/jumbo v0, "InteractivePlaybackMoments"

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

    .line 44
    :cond_1
    return-void

    .line 36
    :cond_2
    const-string/jumbo v0, "wordparty"

    iget-object v2, p0, Lcom/netflix/model/leafs/InteractivePlaybackMoments;->data:Lcom/netflix/mediaclient/ui/iko/model/InteractiveMomentsModel;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/iko/model/InteractiveMomentsModel;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v2, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;

    invoke-virtual {v0, p1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/model/InteractiveMomentsModel;

    iput-object v0, p0, Lcom/netflix/model/leafs/InteractivePlaybackMoments;->data:Lcom/netflix/mediaclient/ui/iko/model/InteractiveMomentsModel;

    goto :goto_0
.end method

.method public set(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method
