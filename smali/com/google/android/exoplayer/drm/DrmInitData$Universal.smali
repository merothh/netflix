.class public final Lcom/google/android/exoplayer/drm/DrmInitData$Universal;
.super Ljava/lang/Object;
.source "DrmInitData.java"

# interfaces
.implements Lcom/google/android/exoplayer/drm/DrmInitData;


# instance fields
.field private data:Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer/drm/DrmInitData$Universal;->data:Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/DrmInitData$Universal;->data:Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    check-cast p1, Lcom/google/android/exoplayer/drm/DrmInitData$Universal;

    iget-object v1, p1, Lcom/google/android/exoplayer/drm/DrmInitData$Universal;->data:Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer/drm/DrmInitData$Universal;->data:Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;->hashCode()I

    move-result v0

    return v0
.end method
