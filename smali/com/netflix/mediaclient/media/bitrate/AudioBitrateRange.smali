.class public Lcom/netflix/mediaclient/media/bitrate/AudioBitrateRange;
.super Lcom/netflix/mediaclient/media/bitrate/BitrateRange;
.source "AudioBitrateRange.java"


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/media/bitrate/BitrateRange;-><init>(II)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lcom/netflix/mediaclient/media/bitrate/AudioBitrateRange;

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/netflix/mediaclient/media/bitrate/AudioBitrateRange;

    iget v2, p0, Lcom/netflix/mediaclient/media/bitrate/AudioBitrateRange;->maximal:I

    iget v3, p1, Lcom/netflix/mediaclient/media/bitrate/AudioBitrateRange;->maximal:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/netflix/mediaclient/media/bitrate/AudioBitrateRange;->minimal:I

    iget v3, p1, Lcom/netflix/mediaclient/media/bitrate/AudioBitrateRange;->minimal:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/netflix/mediaclient/media/bitrate/AudioBitrateRange;->maximal:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/netflix/mediaclient/media/bitrate/AudioBitrateRange;->minimal:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AudioBitrateRange [minimal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/media/bitrate/AudioBitrateRange;->minimal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", maximal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/media/bitrate/AudioBitrateRange;->maximal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
