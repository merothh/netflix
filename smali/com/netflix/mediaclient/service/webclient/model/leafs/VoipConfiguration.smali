.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;
.super Ljava/lang/Object;
.source "VoipConfiguration.java"


# static fields
.field public static final DEFAULT_SAMPLERATE:I = 0x1f40

.field public static final MAX_SAMPLERATE_48K:I = 0xbb80

.field public static final MIN_SAMPLERATE_8K:I = 0x1f40

.field private static TAG:Ljava/lang/String;


# instance fields
.field private enableVoip:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableVoip"
    .end annotation
.end field

.field private enableVoipOverData:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableVoipOverData"
    .end annotation
.end field

.field private enableVoipOverWiFi:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableVoipOverWiFi"
    .end annotation
.end field

.field private jitterThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "jitterThresholdInMs"
    .end annotation
.end field

.field private packetLosThresholdInPercent:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "packetLosThresholdInPercent"
    .end annotation
.end field

.field private rttThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rttThresholdInMs"
    .end annotation
.end field

.field private sampleRateInHz:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sampleRateInHz"
    .end annotation
.end field

.field private showHelpForNonMember:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "showHelpForNonMember"
    .end annotation
.end field

.field private sipThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sipThresholdInMs"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string/jumbo v0, "nf_log"

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->enableVoip:Z

    .line 32
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->enableVoipOverData:Z

    .line 35
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->enableVoipOverWiFi:Z

    .line 50
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->sampleRateInHz:I

    return-void
.end method

.method public static loadFromPreferences(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 129
    .line 130
    const-string/jumbo v0, "voip_configuration"

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "VOIP config not found in file system"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 144
    :goto_0
    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;-><init>()V

    .line 148
    :cond_0
    return-object v0

    .line 136
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 137
    :try_start_1
    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "VOIP config loaded from file system"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 140
    :goto_1
    sget-object v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed to load VOIP config from file system"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    .line 139
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static saveToPreferences(Lcom/netflix/mediaclient/util/NetflixPreference;Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;)Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;
    .locals 2

    .prologue
    .line 116
    if-nez p1, :cond_0

    .line 117
    const-string/jumbo v0, "voip_configuration"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 118
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Subtitle retry policy not found, return default"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    invoke-direct {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;-><init>()V

    .line 123
    :goto_0
    return-object p1

    .line 121
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    .line 122
    const-string/jumbo v1, "voip_configuration"

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->putStringPref(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public getJitterThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->jitterThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    return-object v0
.end method

.method public getPacketLosThresholdInPercent()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->packetLosThresholdInPercent:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    return-object v0
.end method

.method public getRttThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->rttThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    return-object v0
.end method

.method public getSampleRateInHz()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->sampleRateInHz:I

    return v0
.end method

.method public getSipThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->sipThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    return-object v0
.end method

.method public isEnableVoip()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->enableVoip:Z

    return v0
.end method

.method public isEnableVoipOverData()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->enableVoipOverData:Z

    return v0
.end method

.method public isEnableVoipOverWiFi()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->enableVoipOverWiFi:Z

    return v0
.end method

.method public isShowHelpForNonMember()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->showHelpForNonMember:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VoipConfiguration{enableVoip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->enableVoip:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", enableVoipOverData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->enableVoipOverData:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", enableVoipOverWiFi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->enableVoipOverWiFi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", rttThresholdInMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->rttThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", jitterThresholdInMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->jitterThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sipThresholdInMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->sipThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", packetLosThresholdInPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->packetLosThresholdInPercent:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sampleRateInHz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->sampleRateInHz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", showHelpForNonMember="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->showHelpForNonMember:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
