.class abstract Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_CommonMetaData_AudioList;
.super Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$AudioList;
.source ""


# instance fields
.field private final choice_focus:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$AudioList$Audio;

.field private final choice_selected:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$AudioList$Audio;


# direct methods
.method constructor <init>(Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$AudioList$Audio;Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$AudioList$Audio;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$AudioList;-><init>()V

    if-eqz p1, :cond_1

    .line 18
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_CommonMetaData_AudioList;->choice_focus:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$AudioList$Audio;

    if-eqz p2, :cond_0

    .line 22
    iput-object p2, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_CommonMetaData_AudioList;->choice_selected:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$AudioList$Audio;

    return-void

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null choice_selected"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null choice_focus"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public choice_focus()Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$AudioList$Audio;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_CommonMetaData_AudioList;->choice_focus:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$AudioList$Audio;

    return-object v0
.end method

.method public choice_selected()Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$AudioList$Audio;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_CommonMetaData_AudioList;->choice_selected:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$AudioList$Audio;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 48
    :cond_0
    instance-of v1, p1, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$AudioList;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 49
    check-cast p1, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$AudioList;

    .line 50
    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_CommonMetaData_AudioList;->choice_focus:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$AudioList$Audio;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$AudioList;->choice_focus()Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$AudioList$Audio;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_CommonMetaData_AudioList;->choice_selected:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$AudioList$Audio;

    .line 51
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$AudioList;->choice_selected()Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$AudioList$Audio;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_CommonMetaData_AudioList;->choice_focus:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$AudioList$Audio;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 62
    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_CommonMetaData_AudioList;->choice_selected:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$AudioList$Audio;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioList{choice_focus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_CommonMetaData_AudioList;->choice_focus:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$AudioList$Audio;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", choice_selected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_CommonMetaData_AudioList;->choice_selected:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$AudioList$Audio;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
