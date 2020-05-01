.class public Lcom/netflix/mediaclient/media/PlaybackPreCacheData;
.super Ljava/lang/Object;
.source ""


# instance fields
.field mAudioHit:J

.field mLdhHit:Z

.field mManifestCacheHit:Z

.field mVideoHit:J


# direct methods
.method public constructor <init>(ZZJJ)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean p1, p0, Lcom/netflix/mediaclient/media/PlaybackPreCacheData;->mManifestCacheHit:Z

    .line 22
    iput-boolean p2, p0, Lcom/netflix/mediaclient/media/PlaybackPreCacheData;->mLdhHit:Z

    .line 23
    iput-wide p3, p0, Lcom/netflix/mediaclient/media/PlaybackPreCacheData;->mAudioHit:J

    .line 24
    iput-wide p5, p0, Lcom/netflix/mediaclient/media/PlaybackPreCacheData;->mVideoHit:J

    return-void
.end method


# virtual methods
.method public getAudioHit()J
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/PlaybackPreCacheData;->mAudioHit:J

    return-wide v0
.end method

.method public getVideoHit()J
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/PlaybackPreCacheData;->mVideoHit:J

    return-wide v0
.end method

.method public isLdhHit()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/PlaybackPreCacheData;->mLdhHit:Z

    return v0
.end method

.method public isManifestCacheHit()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/PlaybackPreCacheData;->mManifestCacheHit:Z

    return v0
.end method
