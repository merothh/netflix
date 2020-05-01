.class public Lo/tp;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Lcom/google/android/exoplayer2/Format;)I
    .locals 3

    .line 15
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 18
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v1

    .line 19
    instance-of v2, v1, Lcom/netflix/mediaclient/service/player/common/NetflixVMAFMetadataEntry;

    if-eqz v2, :cond_0

    .line 20
    check-cast v1, Lcom/netflix/mediaclient/service/player/common/NetflixVMAFMetadataEntry;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/common/NetflixVMAFMetadataEntry;->d()I

    move-result p0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_1
    return p0
.end method
