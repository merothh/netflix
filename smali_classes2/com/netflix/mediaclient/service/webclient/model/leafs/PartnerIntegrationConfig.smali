.class public abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;
    .locals 3

    .line 22
    invoke-static {}, Lo/adI;->b()Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    const-class v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;

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
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;",
            ">;"
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_PartnerIntegrationConfig$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_PartnerIntegrationConfig$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    .line 27
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SfinderConfig;->getDefault()Lcom/netflix/mediaclient/service/webclient/model/leafs/SfinderConfig;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_PartnerIntegrationConfig$GsonTypeAdapter;->setDefaultSfinderConfig(Lcom/netflix/mediaclient/service/webclient/model/leafs/SfinderConfig;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_PartnerIntegrationConfig$GsonTypeAdapter;

    move-result-object p0

    .line 28
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MinusoneConfig;->getDefault()Lcom/netflix/mediaclient/service/webclient/model/leafs/MinusoneConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_PartnerIntegrationConfig$GsonTypeAdapter;->setDefaultMinusoneConfig(Lcom/netflix/mediaclient/service/webclient/model/leafs/MinusoneConfig;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_PartnerIntegrationConfig$GsonTypeAdapter;

    move-result-object p0

    .line 29
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MdeConfig;->getDefault()Lcom/netflix/mediaclient/service/webclient/model/leafs/MdeConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_PartnerIntegrationConfig$GsonTypeAdapter;->setDefaultMdeConfig(Lcom/netflix/mediaclient/service/webclient/model/leafs/MdeConfig;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_PartnerIntegrationConfig$GsonTypeAdapter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract mdeConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/MdeConfig;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mdeConfig"
    .end annotation
.end method

.method public abstract minusoneConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/MinusoneConfig;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "minusoneConfig"
    .end annotation
.end method

.method public abstract sfinderConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/SfinderConfig;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sfinderConfig"
    .end annotation
.end method
