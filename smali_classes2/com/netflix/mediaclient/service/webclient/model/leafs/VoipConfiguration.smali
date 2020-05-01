.class public abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEFAULT_SAMPLERATE:I = 0x1f40

.field public static final MAX_SAMPLERATE_48K:I = 0xbb80

.field public static final MIN_SAMPLERATE_8K:I = 0x1f40

.field private static TAG:Ljava/lang/String; = "nf_log"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;
    .locals 3

    .line 69
    invoke-static {}, Lo/adI;->b()Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    const-class v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    return-object v0
.end method

.method public static typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    const/4 p0, 0x1

    .line 74
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->setDefaultEnableVoip(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;

    move-result-object v0

    .line 75
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->setDefaultEnableVoipOverData(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;

    move-result-object v0

    .line 76
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->setDefaultEnableVoipOverWiFi(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;

    move-result-object v0

    const/4 v1, 0x0

    .line 77
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->setDefaultDisableChatButton(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;

    move-result-object v0

    const/16 v2, 0x1f40

    .line 78
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->setDefaultSampleRateInHz(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;

    move-result-object v0

    .line 79
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->setDefaultShowConfirmationDialog(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;

    move-result-object p0

    .line 80
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->setDefaultOpenDialpadByDefault(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getJitterThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "jitterThresholdInMs"
    .end annotation
.end method

.method public abstract getPacketLosThresholdInPercent()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "packetLosThresholdInPercent"
    .end annotation
.end method

.method public abstract getRttThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rttThresholdInMs"
    .end annotation
.end method

.method public abstract getSampleRateInHz()I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sampleRateInHz"
    .end annotation
.end method

.method public abstract getSipThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sipThresholdInMs"
    .end annotation
.end method

.method public abstract isDisableChatButton()Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disableChatButton"
    .end annotation
.end method

.method public abstract isEnableVoip()Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableVoip"
    .end annotation
.end method

.method public abstract isEnableVoipOverData()Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableVoipOverData"
    .end annotation
.end method

.method public abstract isEnableVoipOverWiFi()Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableVoipOverWiFi"
    .end annotation
.end method

.method public abstract isOpenDialpadByDefault()Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "openDialpadByDefault"
    .end annotation
.end method

.method public abstract isShowConfirmationDialog()Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "showConfirmationDialog"
    .end annotation
.end method

.method public abstract isShowHelpForNonMember()Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "showHelpForNonMember"
    .end annotation
.end method
