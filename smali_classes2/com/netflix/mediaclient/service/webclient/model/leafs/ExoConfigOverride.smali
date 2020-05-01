.class public abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/ExoConfigOverride;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getVideoFlavorOverride(Ljava/util/Map;Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonObject;",
            ">;",
            "Lcom/google/gson/JsonObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/gson/JsonObject;"
        }
    .end annotation

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    const-string v0, "common"

    .line 97
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 99
    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingConfigOverride;->merge(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 101
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/gson/JsonObject;

    .line 102
    invoke-static {p1, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingConfigOverride;->merge(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ExoConfigOverride;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ExoConfigOverride$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ExoConfigOverride$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method protected abstract core()Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "core"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation
.end method

.method public getOverride(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/netflix/mediaclient/service/player/StreamProfileType;)Lcom/google/gson/JsonObject;
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ExoConfigOverride;->core()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p4}, Lcom/netflix/mediaclient/service/player/StreamProfileType;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ExoConfigOverride;->getVideoFlavorOverride(Ljava/util/Map;Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p2

    .line 82
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ExoConfigOverride;->uilabel()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ExoConfigOverride;->uilabel()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    const/4 v0, 0x0

    invoke-virtual {p4}, Lcom/netflix/mediaclient/service/player/StreamProfileType;->a()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, v0, p4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ExoConfigOverride;->getVideoFlavorOverride(Ljava/util/Map;Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p3

    .line 87
    invoke-static {p1, p3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingConfigOverride;->merge(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 89
    :cond_0
    invoke-static {p2, p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingConfigOverride;->merge(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object p1

    return-object p1
.end method

.method protected abstract uilabel()Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UiLabel"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonObject;",
            ">;>;"
        }
    .end annotation
.end method
