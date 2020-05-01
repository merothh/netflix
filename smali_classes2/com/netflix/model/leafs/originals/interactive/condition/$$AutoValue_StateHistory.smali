.class abstract Lcom/netflix/model/leafs/originals/interactive/condition/$$AutoValue_StateHistory;
.super Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;
.source ""


# instance fields
.field private final global:Lcom/netflix/model/leafs/originals/interactive/condition/State;

.field private final persistent:Lcom/netflix/model/leafs/originals/interactive/condition/State;


# direct methods
.method constructor <init>(Lcom/netflix/model/leafs/originals/interactive/condition/State;Lcom/netflix/model/leafs/originals/interactive/condition/State;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;-><init>()V

    if-eqz p1, :cond_1

    .line 21
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/condition/$$AutoValue_StateHistory;->persistent:Lcom/netflix/model/leafs/originals/interactive/condition/State;

    if-eqz p2, :cond_0

    .line 25
    iput-object p2, p0, Lcom/netflix/model/leafs/originals/interactive/condition/$$AutoValue_StateHistory;->global:Lcom/netflix/model/leafs/originals/interactive/condition/State;

    return-void

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null global"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null persistent"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 55
    :cond_0
    instance-of v1, p1, Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 56
    check-cast p1, Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;

    .line 57
    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/condition/$$AutoValue_StateHistory;->persistent:Lcom/netflix/model/leafs/originals/interactive/condition/State;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;->persistent()Lcom/netflix/model/leafs/originals/interactive/condition/State;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/condition/$$AutoValue_StateHistory;->global:Lcom/netflix/model/leafs/originals/interactive/condition/State;

    .line 58
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;->global()Lcom/netflix/model/leafs/originals/interactive/condition/State;

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

.method public global()Lcom/netflix/model/leafs/originals/interactive/condition/State;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/condition/$$AutoValue_StateHistory;->global:Lcom/netflix/model/leafs/originals/interactive/condition/State;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/condition/$$AutoValue_StateHistory;->persistent:Lcom/netflix/model/leafs/originals/interactive/condition/State;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 69
    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/condition/$$AutoValue_StateHistory;->global:Lcom/netflix/model/leafs/originals/interactive/condition/State;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public persistent()Lcom/netflix/model/leafs/originals/interactive/condition/State;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/condition/$$AutoValue_StateHistory;->persistent:Lcom/netflix/model/leafs/originals/interactive/condition/State;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StateHistory{persistent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/condition/$$AutoValue_StateHistory;->persistent:Lcom/netflix/model/leafs/originals/interactive/condition/State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", global="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/condition/$$AutoValue_StateHistory;->global:Lcom/netflix/model/leafs/originals/interactive/condition/State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
