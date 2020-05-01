.class abstract Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_UiDefinition_Settings;
.super Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Settings;
.source ""


# instance fields
.field private final disableToggleDefault:Z

.field private final randomInitialDefault:Z


# direct methods
.method constructor <init>(ZZ)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Settings;-><init>()V

    .line 15
    iput-boolean p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_UiDefinition_Settings;->randomInitialDefault:Z

    .line 16
    iput-boolean p2, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_UiDefinition_Settings;->disableToggleDefault:Z

    return-void
.end method


# virtual methods
.method public disableToggleDefault()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_UiDefinition_Settings;->disableToggleDefault:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 42
    :cond_0
    instance-of v1, p1, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Settings;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 43
    check-cast p1, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Settings;

    .line 44
    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_UiDefinition_Settings;->randomInitialDefault:Z

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Settings;->randomInitialDefault()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_UiDefinition_Settings;->disableToggleDefault:Z

    .line 45
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Settings;->disableToggleDefault()Z

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

.method public hashCode()I
    .locals 4

    .line 54
    iget-boolean v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_UiDefinition_Settings;->randomInitialDefault:Z

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

    .line 56
    iget-boolean v3, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_UiDefinition_Settings;->disableToggleDefault:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x4d5

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public randomInitialDefault()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_UiDefinition_Settings;->randomInitialDefault:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings{randomInitialDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_UiDefinition_Settings;->randomInitialDefault:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", disableToggleDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_UiDefinition_Settings;->disableToggleDefault:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
