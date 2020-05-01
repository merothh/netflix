.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorizationData;
.super Ljava/lang/Object;
.source "VoipAuthorizationData.java"


# instance fields
.field private nonMemberVoipAuthorization:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorization;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nonMemberVoipAuthorization"
    .end annotation
.end field

.field private userVoipAuthorization:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorization;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userVoipAuthorization"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonMemberVoipAuthorization()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorization;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorizationData;->nonMemberVoipAuthorization:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorization;

    return-object v0
.end method

.method public getUserVoipAuthorization()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorization;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorizationData;->userVoipAuthorization:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorization;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VoipAuthorizationData{userVoipAuthorization="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorizationData;->userVoipAuthorization:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorization;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nonMemberVoipAuthorization="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorizationData;->nonMemberVoipAuthorization:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorization;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
