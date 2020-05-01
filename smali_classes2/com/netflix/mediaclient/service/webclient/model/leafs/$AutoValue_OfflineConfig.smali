.class abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_OfflineConfig;
.super Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;
.source ""


# instance fields
.field private final maintenanceJobPeriodInHrs:I

.field private final offlineFeatureDisabled:Z


# direct methods
.method constructor <init>(ZI)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;-><init>()V

    .line 17
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_OfflineConfig;->offlineFeatureDisabled:Z

    .line 18
    iput p2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_OfflineConfig;->maintenanceJobPeriodInHrs:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 46
    :cond_0
    instance-of v1, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 47
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    .line 48
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_OfflineConfig;->offlineFeatureDisabled:Z

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;->isOfflineFeatureDisabled()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_OfflineConfig;->maintenanceJobPeriodInHrs:I

    .line 49
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;->getMaintenanceJobPeriodInHrs()I

    move-result p1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getMaintenanceJobPeriodInHrs()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maintenanceJobPeriodInHrs"
    .end annotation

    .line 30
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_OfflineConfig;->maintenanceJobPeriodInHrs:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 58
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_OfflineConfig;->offlineFeatureDisabled:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d5

    :goto_0
    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 60
    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_OfflineConfig;->maintenanceJobPeriodInHrs:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public isOfflineFeatureDisabled()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disableOfflineFeature"
    .end annotation

    .line 24
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_OfflineConfig;->offlineFeatureDisabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OfflineConfig{offlineFeatureDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_OfflineConfig;->offlineFeatureDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", maintenanceJobPeriodInHrs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_OfflineConfig;->maintenanceJobPeriodInHrs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
