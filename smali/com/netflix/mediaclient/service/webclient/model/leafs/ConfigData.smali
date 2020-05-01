.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;
.super Ljava/lang/Object;
.source "ConfigData.java"


# instance fields
.field public abTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

.field public accountConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

.field public castKeyData:Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "castKey"
    .end annotation
.end field

.field public customerSupportVoipAuthorizations:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorizationData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "customerSupportVoipAuthorizations"
    .end annotation
.end field

.field public deviceConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

.field public nrmInfo:Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nrmInfo"
    .end annotation
.end field

.field public signInConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "signInConfig"
    .end annotation
.end field

.field public streamingqoeJson:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getABTestConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->abTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    return-object v0
.end method

.method public getAccountConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->accountConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    return-object v0
.end method

.method public getCastKeyData()Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->castKeyData:Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;

    return-object v0
.end method

.method public getCustomerSupportVoipAuthorizations()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorizationData;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->customerSupportVoipAuthorizations:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorizationData;

    return-object v0
.end method

.method public getDeviceConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->deviceConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    return-object v0
.end method

.method public getNrmConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->nrmInfo:Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;

    return-object v0
.end method

.method public getSignInConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->signInConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    return-object v0
.end method

.method public getStreamingConfig()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->streamingqoeJson:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ConfigData{deviceConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->deviceConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", accountConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->accountConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", abTestConfigData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->abTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", streamingqoeJson=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->streamingqoeJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nrmInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->nrmInfo:Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", signInConfigData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->signInConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", customerSupportVoipAuthorizations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->customerSupportVoipAuthorizations:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorizationData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", castKeyData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->castKeyData:Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
