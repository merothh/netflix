.class public Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi28;
.super Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi28;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlatformMediaDrmApi28"


# direct methods
.method constructor <init>(Ljava/util/UUID;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23;-><init>(Ljava/util/UUID;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi28;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->close()V

    return-void
.end method

.method public getConnectedHdcpLevel()I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi28;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getConnectedHdcpLevel()I

    move-result v0

    return v0
.end method

.method public getMaxHdcpLevel()I
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi28;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getMaxHdcpLevel()I

    move-result v0

    return v0
.end method

.method public getMaxSecurityLevel()I
    .locals 1

    .line 47
    invoke-static {}, Landroid/media/MediaDrm;->getMaxSecurityLevel()I

    move-result v0

    return v0
.end method

.method public getMaxSessionCount()I
    .locals 5

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi28;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getMaxSessionCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "PlatformMediaDrmApi28"

    const-string v4, "Failed to get maxSessionCount using MediaDrm API, try hidden API"

    .line 61
    invoke-static {v3, v0, v4, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 62
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi28;->mMediaDrm:Landroid/media/MediaDrm;

    const/16 v2, 0x8

    const-string v4, "maxNumberOfSessions"

    invoke-static {v0, v4, v2}, Lo/adU;->c(Landroid/media/MediaDrm;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    const-string v1, "maxNumberOfSessions (found by hidden API or default) is %d"

    invoke-static {v3, v1, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v0
.end method

.method public getMetrics()Landroid/os/PersistableBundle;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi28;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getMetrics()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method public getOpenSessionCount()I
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi28;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getOpenSessionCount()I

    move-result v0

    return v0
.end method

.method public getSecureStopIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi28;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getSecureStopIds()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSecurityLevel([B)I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi28;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->getSecurityLevel([B)I

    move-result p1

    return p1
.end method

.method public openSession(I)[B
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi28;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->openSession(I)[B

    move-result-object p1

    return-object p1
.end method

.method public removeSecureStop([B)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi28;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->removeSecureStop([B)V

    return-void
.end method
