.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_previewcontent"


# instance fields
.field private encryptedDolbyDigitalPlus20Enabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "encryptedDolbyDigitalPlus20Enabled"
    .end annotation
.end field

.field private encryptedDolbyDigitalPlus51Enabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "encryptedDolbyDigitalPlus51Enabled"
    .end annotation
.end field

.field private encryptedHEAAC2Enabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "encryptedHEAAC2Enabled"
    .end annotation
.end field

.field private encryptedImageSubtitlesEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "encryptedImageSubtitlesEnabled"
    .end annotation
.end field

.field private encryptedTextSubtitlesEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "encryptedTextSubtitlesEnabled"
    .end annotation
.end field

.field private previewContentEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "previewContentEnabled"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->previewContentEnabled:Z

    .line 15
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedTextSubtitlesEnabled:Z

    .line 18
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedImageSubtitlesEnabled:Z

    .line 21
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedDolbyDigitalPlus51Enabled:Z

    .line 24
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedDolbyDigitalPlus20Enabled:Z

    .line 27
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedHEAAC2Enabled:Z

    return-void
.end method

.method public static getDefault()Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;
    .locals 1

    .line 100
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;-><init>()V

    return-object v0
.end method

.method public static getDisabledConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;
    .locals 2

    .line 106
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;-><init>()V

    const/4 v1, 0x0

    .line 107
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->previewContentEnabled:Z

    .line 108
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedTextSubtitlesEnabled:Z

    .line 109
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedImageSubtitlesEnabled:Z

    .line 110
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedDolbyDigitalPlus51Enabled:Z

    .line 111
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedDolbyDigitalPlus20Enabled:Z

    .line 112
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedHEAAC2Enabled:Z

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 71
    :cond_1
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;

    .line 73
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->previewContentEnabled:Z

    iget-boolean v3, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->previewContentEnabled:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 74
    :cond_2
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedTextSubtitlesEnabled:Z

    iget-boolean v3, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedTextSubtitlesEnabled:Z

    if-eq v2, v3, :cond_3

    return v1

    .line 75
    :cond_3
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedImageSubtitlesEnabled:Z

    iget-boolean v3, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedImageSubtitlesEnabled:Z

    if-eq v2, v3, :cond_4

    return v1

    .line 76
    :cond_4
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedDolbyDigitalPlus51Enabled:Z

    iget-boolean v3, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedDolbyDigitalPlus51Enabled:Z

    if-eq v2, v3, :cond_5

    return v1

    .line 78
    :cond_5
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedDolbyDigitalPlus20Enabled:Z

    iget-boolean v3, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedDolbyDigitalPlus20Enabled:Z

    if-eq v2, v3, :cond_6

    return v1

    .line 80
    :cond_6
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedHEAAC2Enabled:Z

    iget-boolean p1, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedHEAAC2Enabled:Z

    if-ne v2, p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_8
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 86
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->previewContentEnabled:Z

    mul-int/lit8 v0, v0, 0x1f

    .line 87
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedTextSubtitlesEnabled:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 88
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedImageSubtitlesEnabled:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 89
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedDolbyDigitalPlus51Enabled:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 90
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedDolbyDigitalPlus20Enabled:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 91
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedHEAAC2Enabled:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isEncryptedDolbyDigitalPlus20Enabled()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedDolbyDigitalPlus20Enabled:Z

    return v0
.end method

.method public isEncryptedDolbyDigitalPlus51Enabled()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedDolbyDigitalPlus51Enabled:Z

    return v0
.end method

.method public isEncryptedHEAAC2Enabled()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedHEAAC2Enabled:Z

    return v0
.end method

.method public isEncryptedImageSubtitlesEnabled()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedImageSubtitlesEnabled:Z

    return v0
.end method

.method public isEncryptedTextSubtitlesEnabled()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedTextSubtitlesEnabled:Z

    return v0
.end method

.method public isPreviewContentEnabled()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->previewContentEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreviewContentConfigData{previewContentEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->previewContentEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", encryptedTextSubtitlesEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedTextSubtitlesEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", encryptedImageSubtitlesEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedImageSubtitlesEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", encryptedDolbyDigitalPlus51Enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedDolbyDigitalPlus51Enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", encryptedDolbyDigitalPlus20Enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedDolbyDigitalPlus20Enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", encryptedHEAAC2Enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedHEAAC2Enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
