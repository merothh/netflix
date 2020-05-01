.class abstract Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;
.super Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;
.source ""


# instance fields
.field private final appUpdateDialogMessage:Ljava/lang/String;

.field private final choicePointDebugMenu:Z

.field private final customBookmark:Z

.field private final fallbackTutorial:Z

.field private final hideDetailedDurations:Z

.field private final interactiveAppUpdateDialogue:Z

.field private final interactiveTrailer:Z

.field private final ipp:Z

.field private final playbackGraph:Z

.field private final playerControlsSnapshots:Z

.field private final prePlay:Z

.field private final resetUserState:Z

.field private final videoMoments:Z


# direct methods
.method constructor <init>(ZZZZZZZZZZZZLjava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;-><init>()V

    .line 50
    iput-boolean p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->playbackGraph:Z

    .line 51
    iput-boolean p2, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->videoMoments:Z

    .line 52
    iput-boolean p3, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->ipp:Z

    .line 53
    iput-boolean p4, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->prePlay:Z

    .line 54
    iput-boolean p5, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->customBookmark:Z

    .line 55
    iput-boolean p6, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->fallbackTutorial:Z

    .line 56
    iput-boolean p7, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->interactiveTrailer:Z

    .line 57
    iput-boolean p8, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->hideDetailedDurations:Z

    .line 58
    iput-boolean p9, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->interactiveAppUpdateDialogue:Z

    .line 59
    iput-boolean p10, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->resetUserState:Z

    .line 60
    iput-boolean p11, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->playerControlsSnapshots:Z

    .line 61
    iput-boolean p12, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->choicePointDebugMenu:Z

    .line 62
    iput-object p13, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->appUpdateDialogMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public appUpdateDialogMessage()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->appUpdateDialogMessage:Ljava/lang/String;

    return-object v0
.end method

.method choicePointDebugMenu()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->choicePointDebugMenu:Z

    return v0
.end method

.method public customBookmark()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->customBookmark:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 155
    :cond_0
    instance-of v1, p1, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 156
    check-cast p1, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    .line 157
    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->playbackGraph:Z

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;->playbackGraph()Z

    move-result v3

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->videoMoments:Z

    .line 158
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;->videoMoments()Z

    move-result v3

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->ipp:Z

    .line 159
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;->ipp()Z

    move-result v3

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->prePlay:Z

    .line 160
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;->prePlay()Z

    move-result v3

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->customBookmark:Z

    .line 161
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;->customBookmark()Z

    move-result v3

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->fallbackTutorial:Z

    .line 162
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;->fallbackTutorial()Z

    move-result v3

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->interactiveTrailer:Z

    .line 163
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;->interactiveTrailer()Z

    move-result v3

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->hideDetailedDurations:Z

    .line 164
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;->hideDetailedDurations()Z

    move-result v3

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->interactiveAppUpdateDialogue:Z

    .line 165
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;->interactiveAppUpdateDialogue()Z

    move-result v3

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->resetUserState:Z

    .line 166
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;->resetUserState()Z

    move-result v3

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->playerControlsSnapshots:Z

    .line 167
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;->playerControlsSnapshots()Z

    move-result v3

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->choicePointDebugMenu:Z

    .line 168
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;->choicePointDebugMenu()Z

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->appUpdateDialogMessage:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 169
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;->appUpdateDialogMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;->appUpdateDialogMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    return v2
.end method

.method public fallbackTutorial()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->fallbackTutorial:Z

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 178
    iget-boolean v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->playbackGraph:Z

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

    .line 180
    iget-boolean v4, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->videoMoments:Z

    if-eqz v4, :cond_1

    const/16 v4, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v4, 0x4d5

    :goto_1
    xor-int/2addr v0, v4

    mul-int v0, v0, v3

    .line 182
    iget-boolean v4, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->ipp:Z

    if-eqz v4, :cond_2

    const/16 v4, 0x4cf

    goto :goto_2

    :cond_2
    const/16 v4, 0x4d5

    :goto_2
    xor-int/2addr v0, v4

    mul-int v0, v0, v3

    .line 184
    iget-boolean v4, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->prePlay:Z

    if-eqz v4, :cond_3

    const/16 v4, 0x4cf

    goto :goto_3

    :cond_3
    const/16 v4, 0x4d5

    :goto_3
    xor-int/2addr v0, v4

    mul-int v0, v0, v3

    .line 186
    iget-boolean v4, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->customBookmark:Z

    if-eqz v4, :cond_4

    const/16 v4, 0x4cf

    goto :goto_4

    :cond_4
    const/16 v4, 0x4d5

    :goto_4
    xor-int/2addr v0, v4

    mul-int v0, v0, v3

    .line 188
    iget-boolean v4, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->fallbackTutorial:Z

    if-eqz v4, :cond_5

    const/16 v4, 0x4cf

    goto :goto_5

    :cond_5
    const/16 v4, 0x4d5

    :goto_5
    xor-int/2addr v0, v4

    mul-int v0, v0, v3

    .line 190
    iget-boolean v4, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->interactiveTrailer:Z

    if-eqz v4, :cond_6

    const/16 v4, 0x4cf

    goto :goto_6

    :cond_6
    const/16 v4, 0x4d5

    :goto_6
    xor-int/2addr v0, v4

    mul-int v0, v0, v3

    .line 192
    iget-boolean v4, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->hideDetailedDurations:Z

    if-eqz v4, :cond_7

    const/16 v4, 0x4cf

    goto :goto_7

    :cond_7
    const/16 v4, 0x4d5

    :goto_7
    xor-int/2addr v0, v4

    mul-int v0, v0, v3

    .line 194
    iget-boolean v4, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->interactiveAppUpdateDialogue:Z

    if-eqz v4, :cond_8

    const/16 v4, 0x4cf

    goto :goto_8

    :cond_8
    const/16 v4, 0x4d5

    :goto_8
    xor-int/2addr v0, v4

    mul-int v0, v0, v3

    .line 196
    iget-boolean v4, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->resetUserState:Z

    if-eqz v4, :cond_9

    const/16 v4, 0x4cf

    goto :goto_9

    :cond_9
    const/16 v4, 0x4d5

    :goto_9
    xor-int/2addr v0, v4

    mul-int v0, v0, v3

    .line 198
    iget-boolean v4, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->playerControlsSnapshots:Z

    if-eqz v4, :cond_a

    const/16 v4, 0x4cf

    goto :goto_a

    :cond_a
    const/16 v4, 0x4d5

    :goto_a
    xor-int/2addr v0, v4

    mul-int v0, v0, v3

    .line 200
    iget-boolean v4, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->choicePointDebugMenu:Z

    if-eqz v4, :cond_b

    goto :goto_b

    :cond_b
    const/16 v1, 0x4d5

    :goto_b
    xor-int/2addr v0, v1

    mul-int v0, v0, v3

    .line 202
    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->appUpdateDialogMessage:Ljava/lang/String;

    if-nez v1, :cond_c

    const/4 v1, 0x0

    goto :goto_c

    :cond_c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_c
    xor-int/2addr v0, v1

    return v0
.end method

.method public hideDetailedDurations()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->hideDetailedDurations:Z

    return v0
.end method

.method public interactiveAppUpdateDialogue()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->interactiveAppUpdateDialogue:Z

    return v0
.end method

.method public interactiveTrailer()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->interactiveTrailer:Z

    return v0
.end method

.method public ipp()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->ipp:Z

    return v0
.end method

.method public playbackGraph()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->playbackGraph:Z

    return v0
.end method

.method public playerControlsSnapshots()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->playerControlsSnapshots:Z

    return v0
.end method

.method public prePlay()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->prePlay:Z

    return v0
.end method

.method public resetUserState()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->resetUserState:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InteractiveFeatures{playbackGraph="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->playbackGraph:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", videoMoments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->videoMoments:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ipp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->ipp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", prePlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->prePlay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", customBookmark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->customBookmark:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fallbackTutorial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->fallbackTutorial:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", interactiveTrailer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->interactiveTrailer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hideDetailedDurations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->hideDetailedDurations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", interactiveAppUpdateDialogue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->interactiveAppUpdateDialogue:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", resetUserState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->resetUserState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", playerControlsSnapshots="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->playerControlsSnapshots:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", choicePointDebugMenu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->choicePointDebugMenu:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", appUpdateDialogMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->appUpdateDialogMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public videoMoments()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_InteractiveFeatures;->videoMoments:Z

    return v0
.end method
