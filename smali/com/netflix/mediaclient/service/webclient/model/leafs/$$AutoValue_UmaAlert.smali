.class abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;
.super Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;
.source "$$AutoValue_UmaAlert.java"


# instance fields
.field private final abTestCell:I

.field private final abTestId:I

.field private final blocking:Z

.field private final body:Ljava/lang/String;

.field private final cta1:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

.field private final cta2:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

.field private final locale:Ljava/lang/String;

.field private final messageId:J

.field private final messageName:Ljava/lang/String;

.field private final timestamp:J

.field private final title:Ljava/lang/String;

.field private final viewType:Ljava/lang/String;


# direct methods
.method constructor <init>(IILjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;J)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;-><init>()V

    .line 34
    iput p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->abTestCell:I

    .line 35
    iput p2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->abTestId:I

    .line 36
    iput-object p3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->locale:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->messageName:Ljava/lang/String;

    .line 38
    iput-wide p5, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->messageId:J

    .line 39
    iput-object p7, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->viewType:Ljava/lang/String;

    .line 40
    iput-boolean p8, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->blocking:Z

    .line 41
    iput-object p9, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->title:Ljava/lang/String;

    .line 42
    iput-object p10, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->body:Ljava/lang/String;

    .line 43
    iput-object p11, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->cta1:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    .line 44
    iput-object p12, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->cta2:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    .line 45
    iput-wide p13, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->timestamp:J

    .line 46
    return-void
.end method


# virtual methods
.method public abTestCell()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->abTestCell:I

    return v0
.end method

.method public abTestId()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->abTestId:I

    return v0
.end method

.method public blocking()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->blocking:Z

    return v0
.end method

.method public body()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->body:Ljava/lang/String;

    return-object v0
.end method

.method public cta1()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->cta1:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    return-object v0
.end method

.method public cta2()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->cta2:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 135
    if-ne p1, p0, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v0

    .line 138
    :cond_1
    instance-of v2, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    if-eqz v2, :cond_a

    .line 139
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    .line 140
    iget v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->abTestCell:I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->abTestCell()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->abTestId:I

    .line 141
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->abTestId()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->locale:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 142
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->locale()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->messageName:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 143
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->messageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_2
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->messageId:J

    .line 144
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->messageId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->viewType:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 145
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->viewType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_3
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->blocking:Z

    .line 146
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->blocking()Z

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->title:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 147
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->title()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_4
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->body:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 148
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->body()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_5
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->cta1:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    if-nez v2, :cond_8

    .line 149
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->cta1()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_6
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->cta2:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    if-nez v2, :cond_9

    .line 150
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->cta2()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_7
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->timestamp:J

    .line 151
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->timestamp()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 142
    :cond_3
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->locale:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->locale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 143
    :cond_4
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->messageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->messageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 145
    :cond_5
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->viewType:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->viewType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_3

    .line 147
    :cond_6
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->title:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->title()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_4

    .line 148
    :cond_7
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->body:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->body()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_5

    .line 149
    :cond_8
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->cta1:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->cta1()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_6

    .line 150
    :cond_9
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->cta2:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->cta2()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_7

    :cond_a
    move v0, v1

    .line 153
    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 10

    .prologue
    const/16 v9, 0x20

    const/4 v1, 0x0

    const v8, 0xf4243

    .line 158
    .line 160
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->abTestCell:I

    xor-int/2addr v0, v8

    .line 161
    mul-int/2addr v0, v8

    .line 162
    iget v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->abTestId:I

    xor-int/2addr v0, v2

    .line 163
    mul-int v2, v0, v8

    .line 164
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->locale:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    xor-int/2addr v0, v2

    .line 165
    mul-int v2, v0, v8

    .line 166
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->messageName:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    xor-int/2addr v0, v2

    .line 167
    mul-int/2addr v0, v8

    .line 168
    int-to-long v2, v0

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->messageId:J

    ushr-long/2addr v4, v9

    iget-wide v6, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->messageId:J

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v0, v2

    .line 169
    mul-int v2, v0, v8

    .line 170
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->viewType:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    xor-int/2addr v0, v2

    .line 171
    mul-int v2, v0, v8

    .line 172
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->blocking:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x4cf

    :goto_3
    xor-int/2addr v0, v2

    .line 173
    mul-int v2, v0, v8

    .line 174
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->title:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    xor-int/2addr v0, v2

    .line 175
    mul-int v2, v0, v8

    .line 176
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->body:Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    xor-int/2addr v0, v2

    .line 177
    mul-int v2, v0, v8

    .line 178
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->cta1:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    xor-int/2addr v0, v2

    .line 179
    mul-int/2addr v0, v8

    .line 180
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->cta2:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    if-nez v2, :cond_7

    :goto_7
    xor-int/2addr v0, v1

    .line 181
    mul-int/2addr v0, v8

    .line 182
    int-to-long v0, v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->timestamp:J

    ushr-long/2addr v2, v9

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->timestamp:J

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 183
    return v0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->locale:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->messageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->viewType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 172
    :cond_3
    const/16 v0, 0x4d5

    goto :goto_3

    .line 174
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    .line 176
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->body:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_5

    .line 178
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->cta1:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_6

    .line 180
    :cond_7
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->cta2:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_7
.end method

.method public locale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public messageId()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->messageId:J

    return-wide v0
.end method

.method public messageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->messageName:Ljava/lang/String;

    return-object v0
.end method

.method public timestamp()J
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->timestamp:J

    return-wide v0
.end method

.method public title()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->title:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UmaAlert{abTestCell="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->abTestCell:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", abTestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->abTestId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->locale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", messageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->messageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->messageId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", viewType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->viewType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", blocking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->blocking:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", cta1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->cta1:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", cta2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->cta2:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->timestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public viewType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$$AutoValue_UmaAlert;->viewType:Ljava/lang/String;

    return-object v0
.end method
