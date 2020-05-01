.class abstract Lcom/netflix/model/leafs/originals/$AutoValue_BillboardAvailabilityDates;
.super Lcom/netflix/model/leafs/originals/BillboardAvailabilityDates;
.source ""


# instance fields
.field private final start:Ljava/lang/Long;


# direct methods
.method constructor <init>(Ljava/lang/Long;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/netflix/model/leafs/originals/BillboardAvailabilityDates;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardAvailabilityDates;->start:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 37
    :cond_0
    instance-of v1, p1, Lcom/netflix/model/leafs/originals/BillboardAvailabilityDates;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 38
    check-cast p1, Lcom/netflix/model/leafs/originals/BillboardAvailabilityDates;

    .line 39
    iget-object v1, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardAvailabilityDates;->start:Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardAvailabilityDates;->start()Ljava/lang/Long;

    move-result-object p1

    if-nez v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardAvailabilityDates;->start:Ljava/lang/Long;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_0
    const v1, 0xf4243

    xor-int/2addr v0, v1

    return v0
.end method

.method public start()Ljava/lang/Long;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "start"
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardAvailabilityDates;->start:Ljava/lang/Long;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BillboardAvailabilityDates{start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/$AutoValue_BillboardAvailabilityDates;->start:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
