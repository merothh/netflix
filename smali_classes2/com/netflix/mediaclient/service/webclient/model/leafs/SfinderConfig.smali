.class public abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/SfinderConfig;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Lcom/netflix/mediaclient/service/webclient/model/leafs/SfinderConfig;
    .locals 3

    .line 19
    invoke-static {}, Lo/adI;->b()Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    const-class v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/SfinderConfig;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SfinderConfig;

    return-object v0
.end method

.method public static isSfinderEnabled(Lcom/netflix/mediaclient/service/webclient/model/leafs/SfinderConfig;)Z
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SfinderConfig;->forceEnable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SfinderConfig;->forceDisable()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/SfinderConfig;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SfinderConfig$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SfinderConfig$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    const/4 p0, 0x0

    .line 24
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SfinderConfig$GsonTypeAdapter;->setDefaultForceEnable(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SfinderConfig$GsonTypeAdapter;

    move-result-object v0

    .line 25
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SfinderConfig$GsonTypeAdapter;->setDefaultForceDisable(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SfinderConfig$GsonTypeAdapter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract forceDisable()Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "forceDisable"
    .end annotation
.end method

.method public abstract forceEnable()Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "forceEnable"
    .end annotation
.end method