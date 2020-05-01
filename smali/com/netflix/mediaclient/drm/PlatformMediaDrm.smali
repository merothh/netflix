.class public Lcom/netflix/mediaclient/drm/PlatformMediaDrm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/drm/NetflixMediaDrm;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/drm/PlatformMediaDrm$KeyRequest;,
        Lcom/netflix/mediaclient/drm/PlatformMediaDrm$PlatformCryptoSession;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "PlatformMediaDrm"


# instance fields
.field protected final mMediaDrm:Landroid/media/MediaDrm;


# direct methods
.method constructor <init>(Ljava/util/UUID;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 35
    new-instance v0, Landroid/media/MediaDrm;

    invoke-direct {v0, p1}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    return-void

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "UUID can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final isCryptoSchemeSupported(Ljava/util/UUID;)Z
    .locals 0

    .line 241
    invoke-static {p0}, Landroid/media/MediaDrm;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V

    return-void
.end method

.method public closeSession([B)V
    .locals 1

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->closeSession([B)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getCryptoSession([BLjava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/drm/NetflixMediaDrm$CryptoSession;
    .locals 2

    .line 150
    new-instance v0, Lcom/netflix/mediaclient/drm/PlatformMediaDrm$PlatformCryptoSession;

    iget-object v1, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v1, p1, p2, p3}, Landroid/media/MediaDrm;->getCryptoSession([BLjava/lang/String;Ljava/lang/String;)Landroid/media/MediaDrm$CryptoSession;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/drm/PlatformMediaDrm$PlatformCryptoSession;-><init>(Lcom/netflix/mediaclient/drm/PlatformMediaDrm;Landroid/media/MediaDrm$CryptoSession;)V

    return-object v0
.end method

.method public getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Lcom/netflix/mediaclient/drm/NetflixMediaDrm$KeyRequest;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netflix/mediaclient/drm/NetflixMediaDrm$KeyRequest;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object p1

    .line 74
    new-instance p2, Lcom/netflix/mediaclient/drm/PlatformMediaDrm$KeyRequest;

    invoke-direct {p2, p1}, Lcom/netflix/mediaclient/drm/PlatformMediaDrm$KeyRequest;-><init>(Landroid/media/MediaDrm$KeyRequest;)V

    return-object p2
.end method

.method public getMaxHdcpLevel()I
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    const-string v1, "maxHdcpLevel"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lo/adU;->c(Landroid/media/MediaDrm;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxSessionCount()I
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    const-string v1, "maxNumberOfSessions"

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lo/adU;->c(Landroid/media/MediaDrm;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMediaDrmType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOemCryptoApiVersion()Ljava/lang/String;
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    const-string v1, "oemCryptoApiVersion"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lo/adU;->c(Landroid/media/MediaDrm;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyByteArray(Ljava/lang/String;)[B
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public getPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getProvisionRequest()Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v0

    .line 85
    new-instance v1, Lcom/netflix/mediaclient/drm/PlatformMediaDrm$2;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/drm/PlatformMediaDrm$2;-><init>(Lcom/netflix/mediaclient/drm/PlatformMediaDrm;Landroid/media/MediaDrm$ProvisionRequest;)V

    return-object v1
.end method

.method public getSecureStops()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getSecureStops()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public openSession(Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;)[B
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {p1}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object p1

    return-object p1
.end method

.method public provideKeyResponse([B[B)[B
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public provideProvisionResponse([B)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V

    return-void
.end method

.method public queryKeyStatus([B)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->queryKeyStatus([B)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public releaseSecureStops([B)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->releaseSecureStops([B)V

    return-void
.end method

.method public removeKeys([B)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->removeKeys([B)V

    return-void
.end method

.method public restoreKeys([B[B)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->restoreKeys([B[B)V

    return-void
.end method

.method public setOnEventListener(Lcom/netflix/mediaclient/drm/NetflixMediaDrm$OnEventListener;)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/drm/PlatformMediaDrm$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/drm/PlatformMediaDrm$1;-><init>(Lcom/netflix/mediaclient/drm/PlatformMediaDrm;Lcom/netflix/mediaclient/drm/NetflixMediaDrm$OnEventListener;)V

    move-object p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V

    return-void
.end method

.method public setPropertyByteArray(Ljava/lang/String;[B)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->setPropertyByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method public setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
