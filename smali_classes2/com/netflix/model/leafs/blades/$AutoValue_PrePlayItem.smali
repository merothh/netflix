.class abstract Lcom/netflix/model/leafs/blades/$AutoValue_PrePlayItem;
.super Lcom/netflix/model/leafs/blades/PrePlayItem;
.source ""


# instance fields
.field private final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/blades/PreplayItemAction;",
            ">;"
        }
    .end annotation
.end field

.field private final impressionData:Ljava/lang/String;

.field private final supplementalMessage:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final type:Ljava/lang/String;

.field private final videoId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/blades/PreplayItemAction;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Lcom/netflix/model/leafs/blades/PrePlayItem;-><init>()V

    if-eqz p1, :cond_5

    .line 33
    iput-object p1, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PrePlayItem;->impressionData:Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 37
    iput-object p2, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PrePlayItem;->type:Ljava/lang/String;

    if-eqz p3, :cond_3

    .line 41
    iput-object p3, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PrePlayItem;->title:Ljava/lang/String;

    if-eqz p4, :cond_2

    .line 45
    iput-object p4, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PrePlayItem;->supplementalMessage:Ljava/lang/String;

    if-eqz p5, :cond_1

    .line 49
    iput-object p5, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PrePlayItem;->actions:Ljava/util/List;

    if-eqz p6, :cond_0

    .line 53
    iput-object p6, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PrePlayItem;->videoId:Ljava/lang/String;

    return-void

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null videoId"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null actions"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null supplementalMessage"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null title"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null type"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null impressionData"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public actions()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "actions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/blades/PreplayItemAction;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PrePlayItem;->actions:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 109
    :cond_0
    instance-of v1, p1, Lcom/netflix/model/leafs/blades/PrePlayItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 110
    check-cast p1, Lcom/netflix/model/leafs/blades/PrePlayItem;

    .line 111
    iget-object v1, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PrePlayItem;->impressionData:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/blades/PrePlayItem;->impressionData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PrePlayItem;->type:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Lcom/netflix/model/leafs/blades/PrePlayItem;->type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PrePlayItem;->title:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Lcom/netflix/model/leafs/blades/PrePlayItem;->title()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PrePlayItem;->supplementalMessage:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Lcom/netflix/model/leafs/blades/PrePlayItem;->supplementalMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PrePlayItem;->actions:Ljava/util/List;

    .line 115
    invoke-virtual {p1}, Lcom/netflix/model/leafs/blades/PrePlayItem;->actions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PrePlayItem;->videoId:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Lcom/netflix/model/leafs/blades/PrePlayItem;->videoId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PrePlayItem;->impressionData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 127
    iget-object v2, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PrePlayItem;->type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 129
    iget-object v2, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PrePlayItem;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 131
    iget-object v2, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PrePlayItem;->supplementalMessage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 133
    iget-object v2, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PrePlayItem;->actions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 135
    iget-object v1, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PrePlayItem;->videoId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public impressionData()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "impressionData"
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PrePlayItem;->impressionData:Ljava/lang/String;

    return-object v0
.end method

.method public supplementalMessage()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "supplementalMessage"
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PrePlayItem;->supplementalMessage:Ljava/lang/String;

    return-object v0
.end method

.method public title()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PrePlayItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrePlayItem{impressionData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PrePlayItem;->impressionData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PrePlayItem;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PrePlayItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", supplementalMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PrePlayItem;->supplementalMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", actions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PrePlayItem;->actions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PrePlayItem;->videoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PrePlayItem;->type:Ljava/lang/String;

    return-object v0
.end method

.method public videoId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "videoId"
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/netflix/model/leafs/blades/$AutoValue_PrePlayItem;->videoId:Ljava/lang/String;

    return-object v0
.end method
