.class abstract Lcom/netflix/model/leafs/$$AutoValue_TimeCodesData;
.super Lcom/netflix/model/leafs/TimeCodesData;
.source ""


# instance fields
.field private final creditMarks:Lcom/netflix/model/leafs/blades/CreditMarks;

.field private final skipContent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/blades/SkipContentData;",
            ">;"
        }
    .end annotation
.end field

.field private final videoId:I


# direct methods
.method constructor <init>(Lcom/netflix/model/leafs/blades/CreditMarks;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/model/leafs/blades/CreditMarks;",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/blades/SkipContentData;",
            ">;I)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Lcom/netflix/model/leafs/TimeCodesData;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/netflix/model/leafs/$$AutoValue_TimeCodesData;->creditMarks:Lcom/netflix/model/leafs/blades/CreditMarks;

    .line 25
    iput-object p2, p0, Lcom/netflix/model/leafs/$$AutoValue_TimeCodesData;->skipContent:Ljava/util/List;

    .line 26
    iput p3, p0, Lcom/netflix/model/leafs/$$AutoValue_TimeCodesData;->videoId:I

    return-void
.end method


# virtual methods
.method public creditMarks()Lcom/netflix/model/leafs/blades/CreditMarks;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "creditMarks"
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/netflix/model/leafs/$$AutoValue_TimeCodesData;->creditMarks:Lcom/netflix/model/leafs/blades/CreditMarks;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 63
    :cond_0
    instance-of v1, p1, Lcom/netflix/model/leafs/TimeCodesData;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 64
    check-cast p1, Lcom/netflix/model/leafs/TimeCodesData;

    .line 65
    iget-object v1, p0, Lcom/netflix/model/leafs/$$AutoValue_TimeCodesData;->creditMarks:Lcom/netflix/model/leafs/blades/CreditMarks;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/TimeCodesData;->creditMarks()Lcom/netflix/model/leafs/blades/CreditMarks;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/model/leafs/TimeCodesData;->creditMarks()Lcom/netflix/model/leafs/blades/CreditMarks;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    iget-object v1, p0, Lcom/netflix/model/leafs/$$AutoValue_TimeCodesData;->skipContent:Ljava/util/List;

    if-nez v1, :cond_2

    .line 66
    invoke-virtual {p1}, Lcom/netflix/model/leafs/TimeCodesData;->skipContent()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/netflix/model/leafs/TimeCodesData;->skipContent()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    iget v1, p0, Lcom/netflix/model/leafs/$$AutoValue_TimeCodesData;->videoId:I

    .line 67
    invoke-virtual {p1}, Lcom/netflix/model/leafs/TimeCodesData;->videoId()I

    move-result p1

    if-ne v1, p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_4
    return v2
.end method

.method public hashCode()I
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/netflix/model/leafs/$$AutoValue_TimeCodesData;->creditMarks:Lcom/netflix/model/leafs/blades/CreditMarks;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int v0, v0, v2

    .line 78
    iget-object v3, p0, Lcom/netflix/model/leafs/$$AutoValue_TimeCodesData;->skipContent:Ljava/util/List;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    mul-int v0, v0, v2

    .line 80
    iget v1, p0, Lcom/netflix/model/leafs/$$AutoValue_TimeCodesData;->videoId:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public skipContent()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "skipContent"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/blades/SkipContentData;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/netflix/model/leafs/$$AutoValue_TimeCodesData;->skipContent:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeCodesData{creditMarks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/$$AutoValue_TimeCodesData;->creditMarks:Lcom/netflix/model/leafs/blades/CreditMarks;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", skipContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/$$AutoValue_TimeCodesData;->skipContent:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/model/leafs/$$AutoValue_TimeCodesData;->videoId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public videoId()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "videoId"
    .end annotation

    .line 46
    iget v0, p0, Lcom/netflix/model/leafs/$$AutoValue_TimeCodesData;->videoId:I

    return v0
.end method