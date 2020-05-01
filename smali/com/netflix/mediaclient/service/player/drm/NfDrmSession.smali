.class public Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;
.super Ljava/lang/Object;
.source "NfDrmSession.java"


# static fields
.field public static final STATE_CLOSED:I = 0x1

.field public static final STATE_ERROR:I = 0x0

.field public static final STATE_OPENED:I = 0x3

.field public static final STATE_OPENED_WITH_KEYS:I = 0x4

.field public static final STATE_OPENING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "NfPlayerDrmManager"

.field public static final WIDEVINE_UUID:Ljava/util/UUID;


# instance fields
.field private inUse:Z

.field private lastException:Ljava/lang/Exception;

.field private mCallbackHandler:Landroid/os/Handler;

.field private mIdHigh:I

.field private mIdLow:I

.field private mLicenseContext:Lcom/netflix/mediaclient/service/player/drm/LicenseContext;

.field mLicenseListener:Lcom/netflix/mediaclient/service/player/drm/NfDrmSession$LicenseListener;

.field private mLicenseType:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

.field mMovieId:Ljava/lang/Long;

.field private mediaCrypto:Landroid/media/MediaCrypto;

.field private mediaDrm:Landroid/media/MediaDrm;

.field private sessionId:[B

.field private sessionInitTimeMs:J

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->WIDEVINE_SCHEME:Ljava/util/UUID;

    sput-object v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->WIDEVINE_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/media/MediaDrm;Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/drm/LicenseContext;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->state:I

    .line 76
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mCallbackHandler:Landroid/os/Handler;

    .line 77
    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mediaDrm:Landroid/media/MediaDrm;

    .line 78
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mMovieId:Ljava/lang/Long;

    .line 79
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    and-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mIdLow:I

    .line 80
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    and-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mIdHigh:I

    .line 81
    invoke-virtual {p4}, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->getLicenseType()Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mLicenseType:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    .line 82
    iput-object p4, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mLicenseContext:Lcom/netflix/mediaclient/service/player/drm/LicenseContext;

    .line 83
    const/4 v0, 0x2

    iput v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->state:I

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->sessionInitTimeMs:J

    .line 86
    :try_start_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->openSessionGetKeyRequest()V
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->postProvisionRequest()V

    goto :goto_0
.end method

.method public static newWidevineDrmSession(Landroid/os/Handler;Landroid/media/MediaDrm;Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/drm/LicenseContext;)Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;-><init>(Landroid/os/Handler;Landroid/media/MediaDrm;Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/drm/LicenseContext;)V

    return-object v0
.end method

.method private onError(Ljava/lang/Exception;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 141
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const-string/jumbo v0, "NfPlayerDrmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->lastException:Ljava/lang/Exception;

    .line 145
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mCallbackHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mIdHigh:I

    iget v2, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mIdLow:I

    invoke-virtual {v0, v3, v1, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 146
    iget v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 147
    iput v3, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->state:I

    .line 149
    :cond_1
    return-void
.end method

.method private openSessionGetKeyRequest()V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->sessionId:[B

    .line 100
    new-instance v0, Landroid/media/MediaCrypto;

    sget-object v1, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->WIDEVINE_UUID:Ljava/util/UUID;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->sessionId:[B

    invoke-direct {v0, v1, v2}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 101
    const/4 v0, 0x3

    iput v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->state:I

    .line 102
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->postKeyRequest()V

    .line 103
    return-void
.end method

.method private postProvisionRequest()V
    .locals 5

    .prologue
    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mCallbackHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mIdHigh:I

    iget v4, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mIdLow:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 108
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->inUse:Z

    .line 215
    iget v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->state:I

    if-nez v0, :cond_1

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mediaDrm:Landroid/media/MediaDrm;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->sessionId:[B

    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->closeSession([B)V

    .line 220
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mLicenseListener:Lcom/netflix/mediaclient/service/player/drm/NfDrmSession$LicenseListener;

    .line 221
    const/4 v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->state:I

    .line 222
    return-void
.end method

.method public getInUse()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->inUse:Z

    return v0
.end method

.method public getLicenseContext()Lcom/netflix/mediaclient/service/player/drm/LicenseContext;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mLicenseContext:Lcom/netflix/mediaclient/service/player/drm/LicenseContext;

    return-object v0
.end method

.method public getMediaCrypto()Landroid/media/MediaCrypto;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mediaCrypto:Landroid/media/MediaCrypto;

    return-object v0
.end method

.method getPriority()I
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public getSessionAgeInMs()J
    .locals 4

    .prologue
    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->sessionInitTimeMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method getSessionId()[B
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->sessionId:[B

    return-object v0
.end method

.method isClosed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 189
    iget v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->state:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLicenseAcquired()Z
    .locals 2

    .prologue
    .line 224
    iget v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method postKeyRequest()V
    .locals 7

    .prologue
    const/4 v1, 0x4

    const/4 v4, 0x2

    .line 110
    const-string/jumbo v0, "NfPlayerDrmManager"

    const-string/jumbo v2, "postKeyRequest start."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v0, 0x1

    .line 114
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mLicenseType:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    sget-object v3, Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;->LICENSE_TYPE_OFFLINE:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v6, v1

    .line 127
    :goto_0
    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mediaDrm:Landroid/media/MediaDrm;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->sessionId:[B

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mLicenseContext:Lcom/netflix/mediaclient/service/player/drm/LicenseContext;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->getDrmHeader()[B

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mLicenseContext:Lcom/netflix/mediaclient/service/player/drm/LicenseContext;

    invoke-virtual {v0}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->setChallenge([B)V

    .line 131
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mCallbackHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mIdHigh:I

    iget v2, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mIdLow:I

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mLicenseContext:Lcom/netflix/mediaclient/service/player/drm/LicenseContext;

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 132
    const-string/jumbo v0, "NfPlayerDrmManager"

    const-string/jumbo v1, "postKeyRequest succeeds."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    return-void

    .line 117
    :cond_0
    iget v2, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->state:I

    if-eq v2, v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mLicenseType:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    sget-object v2, Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;->LICENSE_TYPE_LDL:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    .line 118
    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    const/4 v4, 0x3

    .line 120
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mLicenseContext:Lcom/netflix/mediaclient/service/player/drm/LicenseContext;

    sget-object v2, Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;->LICENSE_TYPE_LDL:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->setmLicenseType(Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;)V

    .line 121
    const-string/jumbo v1, "NfPlayerDrmManager"

    const-string/jumbo v2, "request LDL."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v4

    move v4, v0

    goto :goto_0

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mLicenseContext:Lcom/netflix/mediaclient/service/player/drm/LicenseContext;

    sget-object v2, Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;->LICENSE_TYPE_STANDARD:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->setmLicenseType(Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;)V

    .line 124
    const-string/jumbo v1, "NfPlayerDrmManager"

    const-string/jumbo v2, "request STANDARD."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v4

    move v4, v0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 135
    const-string/jumbo v1, "NfPlayerDrmManager"

    const-string/jumbo v2, "keyRequest has NotProvisionedException."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    throw v0
.end method

.method provideKeyResponse([B)V
    .locals 2

    .prologue
    .line 174
    const-string/jumbo v0, "NfPlayerDrmManager"

    const-string/jumbo v1, "provideKeyResponse start."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mediaDrm:Landroid/media/MediaDrm;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->sessionId:[B

    check-cast p1, [B

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    .line 177
    const/4 v0, 0x4

    iput v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->state:I

    .line 178
    const-string/jumbo v0, "NfPlayerDrmManager"

    const-string/jumbo v1, "provideKeyResponse succeeds."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mLicenseListener:Lcom/netflix/mediaclient/service/player/drm/NfDrmSession$LicenseListener;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mLicenseListener:Lcom/netflix/mediaclient/service/player/drm/NfDrmSession$LicenseListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mMovieId:Ljava/lang/Long;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession$LicenseListener;->licenseAcquired(Ljava/lang/Long;)V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mediaDrm:Landroid/media/MediaDrm;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->sessionId:[B

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->dumpKeyStatus(Landroid/media/MediaDrm;[B)V

    .line 187
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method provideProvisionResponse([B)V
    .locals 2

    .prologue
    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mediaDrm:Landroid/media/MediaDrm;

    check-cast p1, [B

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V
    :try_end_0
    .catch Landroid/media/DeniedByServerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    iget v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 165
    :try_start_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->openSessionGetKeyRequest()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 166
    :catch_1
    move-exception v0

    .line 167
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setCachedLicenseIfAny()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mLicenseContext:Lcom/netflix/mediaclient/service/player/drm/LicenseContext;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->getLicenseData()[B

    move-result-object v0

    .line 196
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 197
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->provideKeyResponse([B)V

    .line 199
    :cond_0
    return-void
.end method

.method public setInUse(Z)V
    .locals 0

    .prologue
    .line 202
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->inUse:Z

    .line 203
    return-void
.end method

.method public setLicenseListener(Lcom/netflix/mediaclient/service/player/drm/NfDrmSession$LicenseListener;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->mLicenseListener:Lcom/netflix/mediaclient/service/player/drm/NfDrmSession$LicenseListener;

    .line 96
    return-void
.end method
