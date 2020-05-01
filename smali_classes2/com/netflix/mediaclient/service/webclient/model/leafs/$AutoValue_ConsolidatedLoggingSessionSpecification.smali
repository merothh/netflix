.class abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ConsolidatedLoggingSessionSpecification;
.super Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;
.source ""


# instance fields
.field private final disableChancePercentagePerUserSession:I

.field private final session:Ljava/lang/String;

.field private final suppressPercentagePerEvent:I


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ConsolidatedLoggingSessionSpecification;->session:Ljava/lang/String;

    .line 22
    iput p2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ConsolidatedLoggingSessionSpecification;->disableChancePercentagePerUserSession:I

    .line 23
    iput p3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ConsolidatedLoggingSessionSpecification;->suppressPercentagePerEvent:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 59
    :cond_0
    instance-of v1, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 60
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;

    .line 61
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ConsolidatedLoggingSessionSpecification;->session:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;->getSession()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;->getSession()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ConsolidatedLoggingSessionSpecification;->disableChancePercentagePerUserSession:I

    .line 62
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;->getDisableChancePercentagePerUserSession()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ConsolidatedLoggingSessionSpecification;->suppressPercentagePerEvent:I

    .line 63
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;->getSuppressPercentagePerEvent()I

    move-result p1

    if-ne v1, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_3
    return v2
.end method

.method public getDisableChancePercentagePerUserSession()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disableChancePercentagePerUserSession"
    .end annotation

    .line 36
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ConsolidatedLoggingSessionSpecification;->disableChancePercentagePerUserSession:I

    return v0
.end method

.method public getSession()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "session"
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ConsolidatedLoggingSessionSpecification;->session:Ljava/lang/String;

    return-object v0
.end method

.method public getSuppressPercentagePerEvent()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "suppressPercentagePerEvent"
    .end annotation

    .line 42
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ConsolidatedLoggingSessionSpecification;->suppressPercentagePerEvent:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ConsolidatedLoggingSessionSpecification;->session:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 74
    iget v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ConsolidatedLoggingSessionSpecification;->disableChancePercentagePerUserSession:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 76
    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ConsolidatedLoggingSessionSpecification;->suppressPercentagePerEvent:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConsolidatedLoggingSessionSpecification{session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ConsolidatedLoggingSessionSpecification;->session:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", disableChancePercentagePerUserSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ConsolidatedLoggingSessionSpecification;->disableChancePercentagePerUserSession:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", suppressPercentagePerEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_ConsolidatedLoggingSessionSpecification;->suppressPercentagePerEvent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
