.class abstract Lcom/netflix/mediaclient/media/manifest/$AutoValue_Url;
.super Lcom/netflix/mediaclient/media/manifest/Url;
.source ""


# instance fields
.field private final cdnId:I

.field private final url:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/manifest/Url;-><init>()V

    .line 17
    iput p1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Url;->cdnId:I

    if-eqz p2, :cond_0

    .line 21
    iput-object p2, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Url;->url:Ljava/lang/String;

    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null url"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public cdnId()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cdn_id"
    .end annotation

    .line 27
    iget v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Url;->cdnId:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 49
    :cond_0
    instance-of v1, p1, Lcom/netflix/mediaclient/media/manifest/Url;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 50
    check-cast p1, Lcom/netflix/mediaclient/media/manifest/Url;

    .line 51
    iget v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Url;->cdnId:I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Url;->cdnId()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Url;->url:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Url;->url()Ljava/lang/String;

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
    .locals 2

    .line 61
    iget v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Url;->cdnId:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 63
    iget-object v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Url;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Url{cdnId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Url;->cdnId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Url;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public url()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Url;->url:Ljava/lang/String;

    return-object v0
.end method
