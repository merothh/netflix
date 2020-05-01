.class public Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;
.super Ljava/lang/Object;
.source "WidevineMediaDrmEngine.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field static final NetflixWidevineUUID:Ljava/util/UUID;

.field static final WideVineUUID:Ljava/util/UUID;

.field static mKeyAdded:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCrypto:Landroid/media/MediaCrypto;

.field private mDrm:Landroid/media/MediaDrm;

.field private mSessionId:[B

.field private mWidevineL3:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/util/UUID;

    const-wide v2, -0x121074568629b532L    # -3.563403477674908E221

    const-wide v4, -0x5c37d8232ae2de13L

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->WideVineUUID:Ljava/util/UUID;

    new-instance v0, Ljava/util/UUID;

    const-wide v2, 0x29701fe43cc74a34L    # 4.291112415540384E-109

    const-wide v4, -0x73a4516f38bc65b9L

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->NetflixWidevineUUID:Ljava/util/UUID;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mKeyAdded:Z

    return-void
.end method

.method constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "WidevineMediaDrmEngine"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mSessionId:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mWidevineL3:Z

    const-string/jumbo v0, "WidevineMediaDrmEngine"

    const-string/jumbo v1, "create WidevineMediaDrmEngine"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mWidevineL3:Z

    const-string/jumbo v0, "WidevineMediaDrmEngine"

    const-string/jumbo v1, "WidevineMediaDrmEngine done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private cleanup()V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mDrm:Landroid/media/MediaDrm;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mCrypto:Landroid/media/MediaCrypto;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mCrypto:Landroid/media/MediaCrypto;

    invoke-virtual {v0}, Landroid/media/MediaCrypto;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mCrypto:Landroid/media/MediaCrypto;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mSessionId:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mDrm:Landroid/media/MediaDrm;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mSessionId:[B

    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->closeSession([B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mSessionId:[B

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mDrm:Landroid/media/MediaDrm;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "WidevineMediaDrmEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "clean up has exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public clearLicense([B)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mSessionId:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mDrm:Landroid/media/MediaDrm;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mSessionId:[B

    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->removeKeys([B)V

    :cond_0
    return-void
.end method

.method public getChallenge([B)[B
    .locals 10

    const/4 v9, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mSessionId:[B

    if-nez v0, :cond_0

    const-string/jumbo v0, "WidevineMediaDrmEngine"

    const-string/jumbo v2, "create Session"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mSessionId:[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mDrm:Landroid/media/MediaDrm;

    const-string/jumbo v2, "provisioningUniqueId"

    invoke-virtual {v0, v2}, Landroid/media/MediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    const-string/jumbo v4, "%02x  "

    new-array v7, v9, [Ljava/lang/Object;

    aget-byte v8, v2, v0

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WidevineMediaDrmEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fail to openSession "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    :goto_1
    return-object v0

    :cond_1
    const-string/jumbo v0, "WidevineMediaDrmEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "provisioningUniqueId "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :try_start_1
    invoke-static {v2}, Lcom/netflix/mediaclient/util/Base64;->encodeBytes([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_3

    const-string/jumbo v1, "CDMID"

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "WidevineMediaDrmEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CDMID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mDrm:Landroid/media/MediaDrm;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mSessionId:[B

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    const/4 v4, 0x1

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;
    :try_end_2
    .catch Landroid/media/NotProvisionedException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v1, "WidevineMediaDrmEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getChallenge of size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v0, "WidevineMediaDrmEngine"

    const-string/jumbo v1, "fail to encode property provisioningUniqueId"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    goto :goto_2

    :catch_2
    move-exception v0

    const-string/jumbo v1, "WidevineMediaDrmEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fail to getChallenge"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/NotProvisionedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v0, "WidevineMediaDrmEngine"

    const-string/jumbo v1, "getChallenge done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    goto/16 :goto_1
.end method

.method public getMediaCrypto()Landroid/media/MediaCrypto;
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "WidevineMediaDrmEngine"

    const-string/jumbo v2, "get MediaCrypto"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->cleanup()V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mDrm:Landroid/media/MediaDrm;

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Landroid/media/MediaDrm;

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->WideVineUUID:Ljava/util/UUID;

    invoke-direct {v1, v2}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mDrm:Landroid/media/MediaDrm;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mWidevineL3:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mDrm:Landroid/media/MediaDrm;

    const-string/jumbo v2, "securityLevel"

    const-string/jumbo v3, "L3"

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/media/MediaDrmException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mSessionId:[B

    if-nez v1, :cond_1

    const-string/jumbo v1, "WidevineMediaDrmEngine"

    const-string/jumbo v2, "create Session"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {v1}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mSessionId:[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :try_start_2
    new-instance v1, Landroid/media/MediaCrypto;

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->WideVineUUID:Ljava/util/UUID;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mSessionId:[B

    invoke-direct {v1, v2, v3}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mCrypto:Landroid/media/MediaCrypto;
    :try_end_2
    .catch Landroid/media/MediaCryptoException; {:try_start_2 .. :try_end_2} :catch_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mCrypto:Landroid/media/MediaCrypto;

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "WidevineMediaDrmEngine"

    const-string/jumbo v3, "fail to create MediaDrm: "

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v2, "WidevineMediaDrmEngine"

    const-string/jumbo v3, "fail to openSession "

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v1

    const-string/jumbo v2, "WidevineMediaDrmEngine"

    const-string/jumbo v3, "fail to create MediaCrypto: "

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getSecureStops()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getSecureStops()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isKeyAdded()Z
    .locals 1

    sget-boolean v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mKeyAdded:Z

    return v0
.end method

.method public releaseMediaCrypto()V
    .locals 2

    const-string/jumbo v0, "WidevineMediaDrmEngine"

    const-string/jumbo v1, "release MediaCrypto and SessionId"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->cleanup()V

    return-void
.end method

.method public releaseSecureStops([B)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->releaseSecureStops([B)V

    return-void
.end method

.method public renewMediaCrypto()Landroid/media/MediaCrypto;
    .locals 4

    const-string/jumbo v0, "WidevineMediaDrmEngine"

    const-string/jumbo v1, "renewMediaCrypto"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Landroid/media/MediaCrypto;

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->WideVineUUID:Ljava/util/UUID;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mSessionId:[B

    invoke-direct {v0, v1, v2}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mCrypto:Landroid/media/MediaCrypto;
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mCrypto:Landroid/media/MediaCrypto;

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WidevineMediaDrmEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fail to create MediaCrypto: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/MediaCryptoException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/media/MediaCryptoException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public storeLicense([B)[B
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mDrm:Landroid/media/MediaDrm;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mSessionId:[B

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mKeyAdded:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mSessionId:[B

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "fail to storeLicense"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method
