.class abstract Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;
.super Lcom/netflix/mediaclient/media/manifest/VideoTrack;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;
    }
.end annotation


# instance fields
.field private final drmHeader:Lo/sw;

.field private final flavor:Ljava/lang/String;

.field private final license:Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;

.field private final maxCroppedHeight:I

.field private final maxCroppedWidth:I

.field private final maxHeight:I

.field private final maxWidth:I

.field private final newTrackId:Ljava/lang/String;

.field private final pixelAspectX:I

.field private final pixelAspectY:I

.field private final profile:Ljava/lang/String;

.field private final streams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Stream;",
            ">;"
        }
    .end annotation
.end field

.field private final trackId:Ljava/lang/String;


# direct methods
.method constructor <init>(IILjava/lang/String;IIIILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/sw;Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Stream;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/sw;",
            "Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;",
            ")V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;-><init>()V

    .line 53
    iput p1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->pixelAspectY:I

    .line 54
    iput p2, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->pixelAspectX:I

    .line 55
    iput-object p3, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->flavor:Ljava/lang/String;

    .line 56
    iput p4, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->maxCroppedWidth:I

    .line 57
    iput p5, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->maxHeight:I

    .line 58
    iput p6, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->maxCroppedHeight:I

    .line 59
    iput p7, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->maxWidth:I

    if-eqz p8, :cond_3

    .line 63
    iput-object p8, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->streams:Ljava/util/List;

    if-eqz p9, :cond_2

    .line 67
    iput-object p9, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->profile:Ljava/lang/String;

    if-eqz p10, :cond_1

    .line 71
    iput-object p10, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->trackId:Ljava/lang/String;

    if-eqz p11, :cond_0

    .line 75
    iput-object p11, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->newTrackId:Ljava/lang/String;

    .line 76
    iput-object p12, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->drmHeader:Lo/sw;

    .line 77
    iput-object p13, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->license:Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;

    return-void

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null newTrackId"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null trackId"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null profile"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null streams"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public drmHeader()Lo/sw;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "drmHeader"
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->drmHeader:Lo/sw;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 185
    :cond_0
    instance-of v1, p1, Lcom/netflix/mediaclient/media/manifest/VideoTrack;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 186
    check-cast p1, Lcom/netflix/mediaclient/media/manifest/VideoTrack;

    .line 187
    iget v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->pixelAspectY:I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->pixelAspectY()I

    move-result v3

    if-ne v1, v3, :cond_4

    iget v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->pixelAspectX:I

    .line 188
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->pixelAspectX()I

    move-result v3

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->flavor:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 189
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->flavor()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->flavor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    iget v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->maxCroppedWidth:I

    .line 190
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->maxCroppedWidth()I

    move-result v3

    if-ne v1, v3, :cond_4

    iget v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->maxHeight:I

    .line 191
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->maxHeight()I

    move-result v3

    if-ne v1, v3, :cond_4

    iget v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->maxCroppedHeight:I

    .line 192
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->maxCroppedHeight()I

    move-result v3

    if-ne v1, v3, :cond_4

    iget v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->maxWidth:I

    .line 193
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->maxWidth()I

    move-result v3

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->streams:Ljava/util/List;

    .line 194
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->streams()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->profile:Ljava/lang/String;

    .line 195
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->profile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->trackId:Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->trackId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->newTrackId:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->newTrackId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->drmHeader:Lo/sw;

    if-nez v1, :cond_2

    .line 198
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->drmHeader()Lo/sw;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->drmHeader()Lo/sw;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    iget-object v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->license:Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;

    if-nez v1, :cond_3

    .line 199
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->license()Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->license()Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_5
    return v2
.end method

.method public flavor()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "flavor"
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->flavor:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 208
    iget v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->pixelAspectY:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 210
    iget v2, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->pixelAspectX:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 212
    iget-object v2, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->flavor:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 214
    iget v2, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->maxCroppedWidth:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 216
    iget v2, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->maxHeight:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 218
    iget v2, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->maxCroppedHeight:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 220
    iget v2, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->maxWidth:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 222
    iget-object v2, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->streams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 224
    iget-object v2, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->profile:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 226
    iget-object v2, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->trackId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 228
    iget-object v2, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->newTrackId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 230
    iget-object v2, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->drmHeader:Lo/sw;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 232
    iget-object v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->license:Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    xor-int/2addr v0, v3

    return v0
.end method

.method public license()Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "license"
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->license:Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;

    return-object v0
.end method

.method public maxCroppedHeight()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maxCroppedHeight"
    .end annotation

    .line 114
    iget v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->maxCroppedHeight:I

    return v0
.end method

.method public maxCroppedWidth()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maxCroppedWidth"
    .end annotation

    .line 102
    iget v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->maxCroppedWidth:I

    return v0
.end method

.method public maxHeight()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maxHeight"
    .end annotation

    .line 108
    iget v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->maxHeight:I

    return v0
.end method

.method public maxWidth()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maxWidth"
    .end annotation

    .line 120
    iget v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->maxWidth:I

    return v0
.end method

.method public newTrackId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "new_track_id"
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->newTrackId:Ljava/lang/String;

    return-object v0
.end method

.method public pixelAspectX()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pixelAspectX"
    .end annotation

    .line 89
    iget v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->pixelAspectX:I

    return v0
.end method

.method public pixelAspectY()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pixelAspectY"
    .end annotation

    .line 83
    iget v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->pixelAspectY:I

    return v0
.end method

.method public profile()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "profile"
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->profile:Ljava/lang/String;

    return-object v0
.end method

.method public streams()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "streams"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Stream;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->streams:Ljava/util/List;

    return-object v0
.end method

.method public toBuilder()Lcom/netflix/mediaclient/media/manifest/VideoTrack$Builder;
    .locals 2

    .line 238
    new-instance v0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$Builder;-><init>(Lcom/netflix/mediaclient/media/manifest/VideoTrack;Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack$1;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoTrack{pixelAspectY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->pixelAspectY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pixelAspectX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->pixelAspectX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flavor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->flavor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maxCroppedWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->maxCroppedWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->maxHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxCroppedHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->maxCroppedHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->maxWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", streams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->streams:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->profile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", trackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->trackId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", newTrackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->newTrackId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", drmHeader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->drmHeader:Lo/sw;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", license="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->license:Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trackId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "track_id"
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/$AutoValue_VideoTrack;->trackId:Ljava/lang/String;

    return-object v0
.end method
