.class public final Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;
.super Ljava/lang/Object;
.source "DrmInitData.java"


# instance fields
.field public final data:[B

.field public final mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;->mimeType:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;->data:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p1, p0, :cond_0

    check-cast p1, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    iget-object v2, p0, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;->data:[B

    iget-object v3, p1, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;->data:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;->mimeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;->data:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method
