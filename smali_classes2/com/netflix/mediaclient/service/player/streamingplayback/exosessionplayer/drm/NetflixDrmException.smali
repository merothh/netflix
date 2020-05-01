.class public Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/drm/NetflixDrmException;
.super Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
.source ""


# instance fields
.field private final c:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 10
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->f()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;)V

    .line 11
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/drm/NetflixDrmException;->c:Lcom/netflix/mediaclient/android/app/Status;

    return-void
.end method


# virtual methods
.method public a()Lcom/netflix/mediaclient/android/app/Status;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/drm/NetflixDrmException;->c:Lcom/netflix/mediaclient/android/app/Status;

    return-object v0
.end method
