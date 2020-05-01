.class public Lcom/netflix/mediaclient/service/player/exoplayback/OfflineDrmSession;
.super Ljava/lang/Object;
.source "OfflineDrmSession.java"

# interfaces
.implements Lcom/google/android/exoplayer/drm/DrmSessionManager;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer/drm/DrmSessionManager",
        "<",
        "Lcom/google/android/exoplayer/drm/FrameworkMediaCrypto;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OfflinePlayback_DrmSession"

.field public static final WIDEVINE_SCHEME:Ljava/util/UUID;


# instance fields
.field private mDrm:Landroid/media/MediaDrm;

.field private mMediaCrypto:Lcom/google/android/exoplayer/drm/FrameworkMediaCrypto;

.field private mSessionId:[B

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->WIDEVINE_SCHEME:Ljava/util/UUID;

    sput-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflineDrmSession;->WIDEVINE_SCHEME:Ljava/util/UUID;

    return-void
.end method

.method constructor <init>([B)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->getNewMediaDrmInstance(Landroid/media/MediaDrm$OnEventListener;)Landroid/media/MediaDrm;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflineDrmSession;->mDrm:Landroid/media/MediaDrm;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflineDrmSession;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflineDrmSession;->mSessionId:[B

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflineDrmSession;->mDrm:Landroid/media/MediaDrm;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflineDrmSession;->mSessionId:[B

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaDrm;->restoreKeys([B[B)V

    new-instance v0, Lcom/google/android/exoplayer/drm/FrameworkMediaCrypto;

    new-instance v1, Landroid/media/MediaCrypto;

    sget-object v2, Lcom/netflix/mediaclient/service/player/exoplayback/OfflineDrmSession;->WIDEVINE_SCHEME:Ljava/util/UUID;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflineDrmSession;->mSessionId:[B

    invoke-direct {v1, v2, v3}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/drm/FrameworkMediaCrypto;-><init>(Landroid/media/MediaCrypto;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflineDrmSession;->mMediaCrypto:Lcom/google/android/exoplayer/drm/FrameworkMediaCrypto;

    const/4 v0, 0x4

    iput v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflineDrmSession;->mState:I

    const-string/jumbo v0, "OfflinePlayback_DrmSession"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflineDrmSession;->mDrm:Landroid/media/MediaDrm;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflineDrmSession;->mSessionId:[B

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->dumpKeyStatus(Ljava/lang/String;Landroid/media/MediaDrm;[B)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflineDrmSession;->mDrm:Landroid/media/MediaDrm;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflineDrmSession;->mSessionId:[B

    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->closeSession([B)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflineDrmSession;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflineDrmSession;->mState:I

    return-void
.end method

.method public getError()Ljava/lang/Exception;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getMediaCrypto()Lcom/google/android/exoplayer/drm/ExoMediaCrypto;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflineDrmSession;->getMediaCrypto()Lcom/google/android/exoplayer/drm/FrameworkMediaCrypto;

    move-result-object v0

    return-object v0
.end method

.method public getMediaCrypto()Lcom/google/android/exoplayer/drm/FrameworkMediaCrypto;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflineDrmSession;->mMediaCrypto:Lcom/google/android/exoplayer/drm/FrameworkMediaCrypto;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflineDrmSession;->mState:I

    return v0
.end method

.method public open(Lcom/google/android/exoplayer/drm/DrmInitData;)V
    .locals 0

    return-void
.end method

.method public requiresSecureDecoderComponent(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflineDrmSession;->mMediaCrypto:Lcom/google/android/exoplayer/drm/FrameworkMediaCrypto;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflineDrmSession;->mMediaCrypto:Lcom/google/android/exoplayer/drm/FrameworkMediaCrypto;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/drm/FrameworkMediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
