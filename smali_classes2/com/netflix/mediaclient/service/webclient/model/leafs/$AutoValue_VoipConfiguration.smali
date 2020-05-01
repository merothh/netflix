.class abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;
.super Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;
.source ""


# instance fields
.field private final disableChatButton:Z

.field private final enableVoip:Z

.field private final enableVoipOverData:Z

.field private final enableVoipOverWiFi:Z

.field private final jitterThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

.field private final openDialpadByDefault:Z

.field private final packetLosThresholdInPercent:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

.field private final rttThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

.field private final sampleRateInHz:I

.field private final showConfirmationDialog:Z

.field private final showHelpForNonMember:Z

.field private final sipThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;


# direct methods
.method constructor <init>(ZZZZLcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;IZZZ)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;-><init>()V

    .line 48
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->enableVoip:Z

    .line 49
    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->enableVoipOverData:Z

    .line 50
    iput-boolean p3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->enableVoipOverWiFi:Z

    .line 51
    iput-boolean p4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->disableChatButton:Z

    .line 52
    iput-object p5, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->rttThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    .line 53
    iput-object p6, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->jitterThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    .line 54
    iput-object p7, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->sipThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    .line 55
    iput-object p8, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->packetLosThresholdInPercent:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    .line 56
    iput p9, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->sampleRateInHz:I

    .line 57
    iput-boolean p10, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->showHelpForNonMember:Z

    .line 58
    iput-boolean p11, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->showConfirmationDialog:Z

    .line 59
    iput-boolean p12, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->openDialpadByDefault:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 161
    :cond_0
    instance-of v1, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 162
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    .line 163
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->enableVoip:Z

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->isEnableVoip()Z

    move-result v3

    if-ne v1, v3, :cond_5

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->enableVoipOverData:Z

    .line 164
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->isEnableVoipOverData()Z

    move-result v3

    if-ne v1, v3, :cond_5

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->enableVoipOverWiFi:Z

    .line 165
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->isEnableVoipOverWiFi()Z

    move-result v3

    if-ne v1, v3, :cond_5

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->disableChatButton:Z

    .line 166
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->isDisableChatButton()Z

    move-result v3

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->rttThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    if-nez v1, :cond_1

    .line 167
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getRttThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getRttThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->jitterThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    if-nez v1, :cond_2

    .line 168
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getJitterThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getJitterThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->sipThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    if-nez v1, :cond_3

    .line 169
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getSipThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getSipThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->packetLosThresholdInPercent:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    if-nez v1, :cond_4

    .line 170
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getPacketLosThresholdInPercent()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getPacketLosThresholdInPercent()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_3
    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->sampleRateInHz:I

    .line 171
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getSampleRateInHz()I

    move-result v3

    if-ne v1, v3, :cond_5

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->showHelpForNonMember:Z

    .line 172
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->isShowHelpForNonMember()Z

    move-result v3

    if-ne v1, v3, :cond_5

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->showConfirmationDialog:Z

    .line 173
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->isShowConfirmationDialog()Z

    move-result v3

    if-ne v1, v3, :cond_5

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->openDialpadByDefault:Z

    .line 174
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->isOpenDialpadByDefault()Z

    move-result p1

    if-ne v1, p1, :cond_5

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    return v0

    :cond_6
    return v2
.end method

.method public getJitterThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "jitterThresholdInMs"
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->jitterThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    return-object v0
.end method

.method public getPacketLosThresholdInPercent()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "packetLosThresholdInPercent"
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->packetLosThresholdInPercent:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    return-object v0
.end method

.method public getRttThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rttThresholdInMs"
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->rttThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    return-object v0
.end method

.method public getSampleRateInHz()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sampleRateInHz"
    .end annotation

    .line 117
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->sampleRateInHz:I

    return v0
.end method

.method public getSipThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sipThresholdInMs"
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->sipThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 183
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->enableVoip:Z

    const/16 v1, 0x4cf

    const/16 v2, 0x4d5

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d5

    :goto_0
    const v3, 0xf4243

    xor-int/2addr v0, v3

    mul-int v0, v0, v3

    .line 185
    iget-boolean v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->enableVoipOverData:Z

    if-eqz v4, :cond_1

    const/16 v4, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v4, 0x4d5

    :goto_1
    xor-int/2addr v0, v4

    mul-int v0, v0, v3

    .line 187
    iget-boolean v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->enableVoipOverWiFi:Z

    if-eqz v4, :cond_2

    const/16 v4, 0x4cf

    goto :goto_2

    :cond_2
    const/16 v4, 0x4d5

    :goto_2
    xor-int/2addr v0, v4

    mul-int v0, v0, v3

    .line 189
    iget-boolean v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->disableChatButton:Z

    if-eqz v4, :cond_3

    const/16 v4, 0x4cf

    goto :goto_3

    :cond_3
    const/16 v4, 0x4d5

    :goto_3
    xor-int/2addr v0, v4

    mul-int v0, v0, v3

    .line 191
    iget-object v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->rttThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    const/4 v5, 0x0

    if-nez v4, :cond_4

    const/4 v4, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_4
    xor-int/2addr v0, v4

    mul-int v0, v0, v3

    .line 193
    iget-object v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->jitterThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    if-nez v4, :cond_5

    const/4 v4, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_5
    xor-int/2addr v0, v4

    mul-int v0, v0, v3

    .line 195
    iget-object v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->sipThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    if-nez v4, :cond_6

    const/4 v4, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_6
    xor-int/2addr v0, v4

    mul-int v0, v0, v3

    .line 197
    iget-object v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->packetLosThresholdInPercent:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    if-nez v4, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    :goto_7
    xor-int/2addr v0, v5

    mul-int v0, v0, v3

    .line 199
    iget v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->sampleRateInHz:I

    xor-int/2addr v0, v4

    mul-int v0, v0, v3

    .line 201
    iget-boolean v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->showHelpForNonMember:Z

    if-eqz v4, :cond_8

    const/16 v4, 0x4cf

    goto :goto_8

    :cond_8
    const/16 v4, 0x4d5

    :goto_8
    xor-int/2addr v0, v4

    mul-int v0, v0, v3

    .line 203
    iget-boolean v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->showConfirmationDialog:Z

    if-eqz v4, :cond_9

    const/16 v4, 0x4cf

    goto :goto_9

    :cond_9
    const/16 v4, 0x4d5

    :goto_9
    xor-int/2addr v0, v4

    mul-int v0, v0, v3

    .line 205
    iget-boolean v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->openDialpadByDefault:Z

    if-eqz v3, :cond_a

    goto :goto_a

    :cond_a
    const/16 v1, 0x4d5

    :goto_a
    xor-int/2addr v0, v1

    return v0
.end method

.method public isDisableChatButton()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disableChatButton"
    .end annotation

    .line 83
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->disableChatButton:Z

    return v0
.end method

.method public isEnableVoip()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableVoip"
    .end annotation

    .line 65
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->enableVoip:Z

    return v0
.end method

.method public isEnableVoipOverData()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableVoipOverData"
    .end annotation

    .line 71
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->enableVoipOverData:Z

    return v0
.end method

.method public isEnableVoipOverWiFi()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableVoipOverWiFi"
    .end annotation

    .line 77
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->enableVoipOverWiFi:Z

    return v0
.end method

.method public isOpenDialpadByDefault()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "openDialpadByDefault"
    .end annotation

    .line 135
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->openDialpadByDefault:Z

    return v0
.end method

.method public isShowConfirmationDialog()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "showConfirmationDialog"
    .end annotation

    .line 129
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->showConfirmationDialog:Z

    return v0
.end method

.method public isShowHelpForNonMember()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "showHelpForNonMember"
    .end annotation

    .line 123
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->showHelpForNonMember:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoipConfiguration{enableVoip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->enableVoip:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enableVoipOverData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->enableVoipOverData:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enableVoipOverWiFi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->enableVoipOverWiFi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", disableChatButton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->disableChatButton:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rttThresholdInMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->rttThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", jitterThresholdInMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->jitterThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sipThresholdInMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->sipThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", packetLosThresholdInPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->packetLosThresholdInPercent:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sampleRateInHz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->sampleRateInHz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", showHelpForNonMember="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->showHelpForNonMember:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showConfirmationDialog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->showConfirmationDialog:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", openDialpadByDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_VoipConfiguration;->openDialpadByDefault:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
