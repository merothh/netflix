.class abstract Lcom/netflix/mediaclient/media/manifest/$AutoValue_ManifestLimitedLicense;
.super Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;
.source ""


# instance fields
.field private final bytes:[B

.field private final drmSessionId:I


# direct methods
.method constructor <init>([BI)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;-><init>()V

    if-eqz p1, :cond_0

    .line 23
    iput-object p1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_ManifestLimitedLicense;->bytes:[B

    .line 24
    iput p2, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_ManifestLimitedLicense;->drmSessionId:I

    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null bytes"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bytes()[B
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "licenseResponseBase64"
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_ManifestLimitedLicense;->bytes:[B

    return-object v0
.end method

.method public drmSessionId()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "drmSessionId"
    .end annotation

    .line 38
    iget v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_ManifestLimitedLicense;->drmSessionId:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 54
    :cond_0
    instance-of v1, p1, Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 55
    check-cast p1, Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;

    .line 56
    iget-object v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_ManifestLimitedLicense;->bytes:[B

    instance-of v3, p1, Lcom/netflix/mediaclient/media/manifest/$AutoValue_ManifestLimitedLicense;

    if-eqz v3, :cond_1

    move-object v3, p1

    check-cast v3, Lcom/netflix/mediaclient/media/manifest/$AutoValue_ManifestLimitedLicense;

    iget-object v3, v3, Lcom/netflix/mediaclient/media/manifest/$AutoValue_ManifestLimitedLicense;->bytes:[B

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;->bytes()[B

    move-result-object v3

    :goto_0
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_ManifestLimitedLicense;->drmSessionId:I

    .line 57
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;->drmSessionId()I

    move-result p1

    if-ne v1, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_ManifestLimitedLicense;->bytes:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 68
    iget v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_ManifestLimitedLicense;->drmSessionId:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ManifestLimitedLicense{bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_ManifestLimitedLicense;->bytes:[B

    .line 44
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", drmSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_ManifestLimitedLicense;->drmSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
