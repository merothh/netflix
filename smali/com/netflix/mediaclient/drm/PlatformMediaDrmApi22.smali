.class public Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi22;
.super Lcom/netflix/mediaclient/drm/PlatformMediaDrm;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi22;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x16
.end annotation


# direct methods
.method constructor <init>(Ljava/util/UUID;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/drm/PlatformMediaDrm;-><init>(Ljava/util/UUID;)V

    return-void
.end method


# virtual methods
.method public getSecureStop([B)[B
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi22;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->getSecureStop([B)[B

    move-result-object p1

    return-object p1
.end method

.method public removeAllSecureStops()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi22;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->releaseAllSecureStops()V

    return-void
.end method
