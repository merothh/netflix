.class public abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;
    .locals 3

    .line 25
    invoke-static {}, Lo/adI;->b()Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    const-class v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;

    return-object v0
.end method

.method public static typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_PdsAndLogblobConfig$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_PdsAndLogblobConfig$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    const/4 p0, 0x0

    .line 30
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_PdsAndLogblobConfig$GsonTypeAdapter;->setDefaultDisableOfflineLogblobs(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_PdsAndLogblobConfig$GsonTypeAdapter;

    move-result-object v0

    .line 31
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_PdsAndLogblobConfig$GsonTypeAdapter;->setDefaultDisableOfflinePdsEvents(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_PdsAndLogblobConfig$GsonTypeAdapter;

    move-result-object v0

    .line 32
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_PdsAndLogblobConfig$GsonTypeAdapter;->setDefaultDisableStreamingLogblobs(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_PdsAndLogblobConfig$GsonTypeAdapter;

    move-result-object v0

    .line 33
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_PdsAndLogblobConfig$GsonTypeAdapter;->setDefaultDisableStreamingPdsEvents(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_PdsAndLogblobConfig$GsonTypeAdapter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getDisableOfflineLogblobs()Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disableOfflineLogblobs"
    .end annotation
.end method

.method public abstract getDisableOfflinePdsEvents()Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disableOfflinePdsEvents"
    .end annotation
.end method

.method public abstract getDisableStreamingLogblobs()Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disableStreamingLogblobs"
    .end annotation
.end method

.method public abstract getDisableStreamingPdsEvents()Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disableStreamingPdsEvents"
    .end annotation
.end method
