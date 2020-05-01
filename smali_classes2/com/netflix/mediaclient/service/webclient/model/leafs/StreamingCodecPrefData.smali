.class public abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;
    .locals 3

    .line 36
    invoke-static {}, Lo/adI;->b()Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    const-class v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;

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
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_StreamingCodecPrefData$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_StreamingCodecPrefData$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    const/4 p0, 0x0

    .line 41
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_StreamingCodecPrefData$GsonTypeAdapter;->setDefaultVP9HWCodecEnabled(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_StreamingCodecPrefData$GsonTypeAdapter;

    move-result-object v0

    .line 42
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_StreamingCodecPrefData$GsonTypeAdapter;->setDefaultAVCHighCodecEnabled(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_StreamingCodecPrefData$GsonTypeAdapter;

    move-result-object v0

    .line 43
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_StreamingCodecPrefData$GsonTypeAdapter;->setDefaultEveVP9HWCodecEnabled(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_StreamingCodecPrefData$GsonTypeAdapter;

    move-result-object v0

    .line 44
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_StreamingCodecPrefData$GsonTypeAdapter;->setDefaultAVCHighCodecForceEnabled(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_StreamingCodecPrefData$GsonTypeAdapter;

    move-result-object v0

    .line 45
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_StreamingCodecPrefData$GsonTypeAdapter;->setDefaultAV1CodecEnabled(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_StreamingCodecPrefData$GsonTypeAdapter;

    move-result-object v0

    .line 46
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_StreamingCodecPrefData$GsonTypeAdapter;->setDefaultXHEAACCodecEnabled(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_StreamingCodecPrefData$GsonTypeAdapter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract isAV1CodecEnabled()Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isAV1CodecEnabled"
    .end annotation
.end method

.method public abstract isAVCHighCodecEnabled()Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isAVCHighCodecEnabled"
    .end annotation
.end method

.method public abstract isAVCHighCodecForceEnabled()Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isAVCHighCodecForceEnabled"
    .end annotation
.end method

.method public abstract isEveVP9HWCodecEnabled()Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isEveVP9HWCodecEnabled"
    .end annotation
.end method

.method public abstract isVP9HWCodecEnabled()Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isVP9HWCodecEnabled"
    .end annotation
.end method

.method public abstract isXHEAACCodecEnabled()Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isXHEAACCodecEnabled"
    .end annotation
.end method
