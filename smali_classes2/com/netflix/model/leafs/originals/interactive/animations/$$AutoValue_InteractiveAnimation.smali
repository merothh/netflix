.class abstract Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_InteractiveAnimation;
.super Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;
.source ""


# instance fields
.field private final delay:J

.field private final delta:Ljava/lang/Float;

.field private final duration:J

.field private final ease:Lcom/netflix/model/leafs/originals/interactive/animations/Ease;

.field private final fromOrigin:Z

.field private final fromValue:Ljava/lang/Float;

.field private final toValue:Ljava/lang/Float;


# direct methods
.method constructor <init>(Ljava/lang/Float;Ljava/lang/Float;JJLjava/lang/Float;ZLcom/netflix/model/leafs/originals/interactive/animations/Ease;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_InteractiveAnimation;->fromValue:Ljava/lang/Float;

    .line 33
    iput-object p2, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_InteractiveAnimation;->toValue:Ljava/lang/Float;

    .line 34
    iput-wide p3, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_InteractiveAnimation;->delay:J

    .line 35
    iput-wide p5, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_InteractiveAnimation;->duration:J

    .line 36
    iput-object p7, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_InteractiveAnimation;->delta:Ljava/lang/Float;

    .line 37
    iput-boolean p8, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_InteractiveAnimation;->fromOrigin:Z

    .line 38
    iput-object p9, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_InteractiveAnimation;->ease:Lcom/netflix/model/leafs/originals/interactive/animations/Ease;

    return-void
.end method


# virtual methods
.method public delay()J
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_InteractiveAnimation;->delay:J

    return-wide v0
.end method

.method public delta()Ljava/lang/Float;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_InteractiveAnimation;->delta:Ljava/lang/Float;

    return-object v0
.end method

.method public duration()J
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_InteractiveAnimation;->duration:J

    return-wide v0
.end method

.method public ease()Lcom/netflix/model/leafs/originals/interactive/animations/Ease;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_InteractiveAnimation;->ease:Lcom/netflix/model/leafs/originals/interactive/animations/Ease;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 98
    :cond_0
    instance-of v1, p1, Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 99
    check-cast p1, Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;

    .line 100
    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_InteractiveAnimation;->fromValue:Ljava/lang/Float;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;->fromValue()Ljava/lang/Float;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;->fromValue()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_0
    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_InteractiveAnimation;->toValue:Ljava/lang/Float;

    if-nez v1, :cond_2

    .line 101
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;->toValue()Ljava/lang/Float;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;->toValue()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_1
    iget-wide v3, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_InteractiveAnimation;->delay:J

    .line 102
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;->delay()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    iget-wide v3, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_InteractiveAnimation;->duration:J

    .line 103
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;->duration()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_InteractiveAnimation;->delta:Ljava/lang/Float;

    if-nez v1, :cond_3

    .line 104
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;->delta()Ljava/lang/Float;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;->delta()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_2
    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_InteractiveAnimation;->fromOrigin:Z

    .line 105
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;->fromOrigin()Z

    move-result v3

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_InteractiveAnimation;->ease:Lcom/netflix/model/leafs/originals/interactive/animations/Ease;

    if-nez v1, :cond_4

    .line 106
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;->ease()Lcom/netflix/model/leafs/originals/interactive/animations/Ease;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;->ease()Lcom/netflix/model/leafs/originals/interactive/animations/Ease;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_6
    return v2
.end method

.method public fromOrigin()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_InteractiveAnimation;->fromOrigin:Z

    return v0
.end method

.method public fromValue()Ljava/lang/Float;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_InteractiveAnimation;->fromValue:Ljava/lang/Float;

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    .line 115
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_InteractiveAnimation;->fromValue:Ljava/lang/Float;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int v0, v0, v2

    .line 117
    iget-object v3, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_InteractiveAnimation;->toValue:Ljava/lang/Float;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Float;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 119
    iget-wide v3, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_InteractiveAnimation;->delay:J

    const/16 v5, 0x20

    ushr-long v6, v3, v5

    xor-long/2addr v3, v6

    long-to-int v4, v3

    xor-int/2addr v0, v4

    mul-int v0, v0, v2

    .line 121
    iget-wide v3, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_InteractiveAnimation;->duration:J

    ushr-long v5, v3, v5

    xor-long/2addr v3, v5

    long-to-int v4, v3

    xor-int/2addr v0, v4

    mul-int v0, v0, v2

    .line 123
    iget-object v3, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_InteractiveAnimation;->delta:Ljava/lang/Float;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Float;->hashCode()I

    move-result v3

    :goto_2
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 125
    iget-boolean v3, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_InteractiveAnimation;->fromOrigin:Z

    if-eqz v3, :cond_3

    const/16 v3, 0x4cf

    goto :goto_3

    :cond_3
    const/16 v3, 0x4d5

    :goto_3
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 127
    iget-object v2, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_InteractiveAnimation;->ease:Lcom/netflix/model/leafs/originals/interactive/animations/Ease;

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InteractiveAnimation{fromValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_InteractiveAnimation;->fromValue:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", toValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_InteractiveAnimation;->toValue:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_InteractiveAnimation;->delay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_InteractiveAnimation;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", delta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_InteractiveAnimation;->delta:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fromOrigin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_InteractiveAnimation;->fromOrigin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_InteractiveAnimation;->ease:Lcom/netflix/model/leafs/originals/interactive/animations/Ease;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toValue()Ljava/lang/Float;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_InteractiveAnimation;->toValue:Ljava/lang/Float;

    return-object v0
.end method
