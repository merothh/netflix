.class abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaCta;
.super Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;
.source "$$AutoValue_UmaCta.java"


# instance fields
.field private final action:Ljava/lang/String;

.field private final actionType:Ljava/lang/String;

.field private final autoLogin:Z

.field private final callback:Ljava/lang/String;

.field private final selected:Z

.field private final text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaCta;->text:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaCta;->action:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaCta;->actionType:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaCta;->callback:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaCta;->selected:Z

    iput-boolean p6, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaCta;->autoLogin:Z

    return-void
.end method


# virtual methods
.method public action()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaCta;->action:Ljava/lang/String;

    return-object v0
.end method

.method public actionType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaCta;->actionType:Ljava/lang/String;

    return-object v0
.end method

.method public autoLogin()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaCta;->autoLogin:Z

    return v0
.end method

.method public callback()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaCta;->callback:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    if-eqz v2, :cond_7

    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaCta;->text:Ljava/lang/String;

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->text()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaCta;->action:Ljava/lang/String;

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->action()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_2
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaCta;->actionType:Ljava/lang/String;

    if-nez v2, :cond_5

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->actionType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_3
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaCta;->callback:Ljava/lang/String;

    if-nez v2, :cond_6

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->callback()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_4
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaCta;->selected:Z

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->selected()Z

    move-result v3

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaCta;->autoLogin:Z

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->autoLogin()Z

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaCta;->text:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->text()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaCta;->action:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->action()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaCta;->actionType:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->actionType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaCta;->callback:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->callback()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_4

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    const/16 v3, 0x4d5

    const/16 v2, 0x4cf

    const/4 v1, 0x0

    const v5, 0xf4243

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaCta;->text:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    xor-int/2addr v0, v5

    mul-int v4, v0, v5

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaCta;->action:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    xor-int/2addr v0, v4

    mul-int v4, v0, v5

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaCta;->actionType:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    xor-int/2addr v0, v4

    mul-int/2addr v0, v5

    iget-object v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaCta;->callback:Ljava/lang/String;

    if-nez v4, :cond_3

    :goto_3
    xor-int/2addr v0, v1

    mul-int v1, v0, v5

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaCta;->selected:Z

    if-eqz v0, :cond_4

    move v0, v2

    :goto_4
    xor-int/2addr v0, v1

    mul-int/2addr v0, v5

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaCta;->autoLogin:Z

    if-eqz v1, :cond_5

    :goto_5
    xor-int/2addr v0, v2

    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaCta;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaCta;->action:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaCta;->actionType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaCta;->callback:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_4
    move v0, v3

    goto :goto_4

    :cond_5
    move v2, v3

    goto :goto_5
.end method

.method public selected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaCta;->selected:Z

    return v0
.end method

.method public text()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaCta;->text:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UmaCta{text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaCta;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaCta;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", actionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaCta;->actionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaCta;->callback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", selected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaCta;->selected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", autoLogin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaCta;->autoLogin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
