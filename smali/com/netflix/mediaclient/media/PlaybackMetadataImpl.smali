.class public final Lcom/netflix/mediaclient/media/PlaybackMetadataImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/media/PlaybackMetadata;


# instance fields
.field public mAudioHit:J

.field public mDuration:J

.field public mLdlHit:Z

.field public mManifestCacheHit:Z

.field public mPlayDelay:J

.field public mPlayerName:Ljava/lang/String;

.field public mSdkPlayDelay:J

.field private mStreamingStat:Lo/pI;

.field public mSubtitleProfile:Ljava/lang/String;

.field public mVideoBitRate:J

.field public mVideoDecoderName:Ljava/lang/String;

.field public mVideoFlavor:Ljava/lang/String;

.field public mVideoHit:J

.field private mVideoProfile:Ljava/lang/String;

.field public mVideoResolution:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/PlaybackMetadataImpl;->mVideoResolution:Landroid/util/Pair;

    return-void
.end method

.method private getAudioChannel(Lcom/netflix/mediaclient/media/AudioSource;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_5

    .line 60
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/AudioSource;->getNumChannels()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "7.1"

    return-object p1

    :cond_1
    const-string p1, "6.1"

    return-object p1

    :cond_2
    const-string p1, "5.1"

    return-object p1

    :cond_3
    const-string p1, "Stereo"

    return-object p1

    :cond_4
    const-string p1, "Mono"

    return-object p1

    :cond_5
    :goto_0
    const-string p1, "-1"

    return-object p1
.end method

.method private getAudioTrackType(Lcom/netflix/mediaclient/media/AudioSource;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_3

    .line 45
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/AudioSource;->getTrackType()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "assistive"

    return-object p1

    :cond_1
    const-string p1, "commentary"

    return-object p1

    :cond_2
    const-string p1, "primary"

    return-object p1

    :cond_3
    :goto_0
    const-string p1, "unknown"

    return-object p1
.end method

.method private getDrmMetadata(Lo/zJ;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_2

    .line 150
    invoke-interface {p1}, Lo/zJ;->b()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    invoke-interface {p1}, Lo/zJ;->b()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    const-string p1, "EMWV"

    return-object p1

    :cond_1
    const-string p1, "UNK"

    return-object p1

    :cond_2
    :goto_0
    return-object p2
.end method


# virtual methods
.method public getPlaybackPreCacheData()Lcom/netflix/mediaclient/media/PlaybackPreCacheData;
    .locals 8

    .line 182
    new-instance v7, Lcom/netflix/mediaclient/media/PlaybackPreCacheData;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/media/PlaybackMetadataImpl;->mManifestCacheHit:Z

    iget-boolean v2, p0, Lcom/netflix/mediaclient/media/PlaybackMetadataImpl;->mLdlHit:Z

    iget-wide v3, p0, Lcom/netflix/mediaclient/media/PlaybackMetadataImpl;->mAudioHit:J

    iget-wide v5, p0, Lcom/netflix/mediaclient/media/PlaybackMetadataImpl;->mVideoHit:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/media/PlaybackPreCacheData;-><init>(ZZJJ)V

    return-object v7
.end method

.method public getPlayerName()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/netflix/mediaclient/media/PlaybackMetadataImpl;->mPlayerName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitleProfile()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/netflix/mediaclient/media/PlaybackMetadataImpl;->mSubtitleProfile:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoBitrate()I
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/media/PlaybackMetadataImpl;->mStreamingStat:Lo/pI;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Lo/pI;->d()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoDecoderStats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/netflix/mediaclient/media/PlaybackMetadataImpl;->mStreamingStat:Lo/pI;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/pI;->c()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getVideoFlavor()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/netflix/mediaclient/media/PlaybackMetadataImpl;->mVideoFlavor:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoProfile()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/netflix/mediaclient/media/PlaybackMetadataImpl;->mVideoProfile:Ljava/lang/String;

    return-object v0
.end method

.method public setPlayerManifestData(Lcom/netflix/mediaclient/media/PlayerManifestData;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/PlayerManifestData;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/PlaybackMetadataImpl;->mDuration:J

    .line 96
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/PlayerManifestData;->getVideoProfileTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/PlaybackMetadataImpl;->mVideoProfile:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/PlayerManifestData;->getRawVideoProfileType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/media/PlaybackMetadataImpl;->mVideoFlavor:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 99
    iput-object p1, p0, Lcom/netflix/mediaclient/media/PlaybackMetadataImpl;->mVideoProfile:Ljava/lang/String;

    .line 100
    iput-object p1, p0, Lcom/netflix/mediaclient/media/PlaybackMetadataImpl;->mVideoFlavor:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setStreamingStat(Lo/pI;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/netflix/mediaclient/media/PlaybackMetadataImpl;->mStreamingStat:Lo/pI;

    return-void
.end method

.method public toDisplayableString(Lo/zJ;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, "n/a"

    return-object p1
.end method
