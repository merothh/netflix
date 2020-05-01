.class public Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;
.super Ljava/lang/Object;
.source "OfflinePlayableManifestImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_offline_manifest"


# instance fields
.field private final mAspectRatio:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioSourceArray:[Lcom/netflix/mediaclient/media/AudioSource;

.field private final mAudioSubtitleDefaultOrderInfoArray:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

.field private final mContext:Landroid/content/Context;

.field private final mDc:Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;

.field private final mDxId:Ljava/lang/String;

.field private final mKeySetId:[B

.field private final mLinks:Lorg/json/JSONObject;

.field private final mMpd:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

.field private final mOxId:Ljava/lang/String;

.field private final mSubtitleArray:[Lcom/netflix/mediaclient/media/Subtitle;

.field private final mTrickplayUrl:Ljava/lang/String;

.field private final mVideoTrackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/media/manifest/VideoTrack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;[BLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/player/manifest/NfManifest;",
            "[B",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;->mKeySetId:[B

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;->mOxId:Ljava/lang/String;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;->mDxId:Ljava/lang/String;

    invoke-static {p3, p5}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->getAudioSourceArrayForDownloadables(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Ljava/util/List;)[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;->mAudioSourceArray:[Lcom/netflix/mediaclient/media/AudioSource;

    invoke-static {p3, p6}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->getVideoTracks(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;->mVideoTrackList:Ljava/util/List;

    invoke-static {p3, p7, p2}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->getSubTitleArrayForDownloadables(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Ljava/util/List;Ljava/lang/String;)[Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;->mSubtitleArray:[Lcom/netflix/mediaclient/media/Subtitle;

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {p8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->TrickPlay:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    invoke-static {p2, v1, v2}, Lcom/netflix/mediaclient/service/offline/utils/OfflinePathUtils;->getFilePathForDownloadable(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;->mTrickplayUrl:Ljava/lang/String;

    :goto_0
    invoke-virtual {p3}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getAspectWidthHeight()Landroid/util/Pair;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;->mAspectRatio:Landroid/util/Pair;

    invoke-virtual {p3}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getAudioSubtitleDefaultOrderInfo()[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;->mAudioSubtitleDefaultOrderInfoArray:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;->mAudioSubtitleDefaultOrderInfoArray:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;->mAudioSubtitleDefaultOrderInfoArray:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    array-length v1, v1

    if-lez v1, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;->getDefaultAudioTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestUtils;->getDownloadableForAudioTrackId(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/service/offline/manifest/MpdBuilder;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/service/offline/manifest/MpdBuilder;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getLinks()Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;->mLinks:Lorg/json/JSONObject;

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;->mDc:Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/manifest/MpdBuilder;->buildMpd()Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;->mMpd:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;->mMpd:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    if-nez v1, :cond_2

    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;->mTrickplayUrl:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;->dump()V

    goto :goto_1
.end method

.method private dump()V
    .locals 0

    return-void
.end method

.method private getDefaultAudioTrackId()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/l10n/LanguageUtils;->getSelectedLanguage(Landroid/content/Context;)Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;->mAudioSubtitleDefaultOrderInfoArray:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->getAudioTrackId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;->getSubtitleTrackList()[Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;->getAudioTrackList()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;->getAudioSubtitleDefaultOrderInfo()[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/l10n/LanguageUtils;->toLanguageChoice(Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;[Lcom/netflix/mediaclient/media/Subtitle;[Lcom/netflix/mediaclient/media/AudioSource;[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;)Lcom/netflix/mediaclient/util/LanguageChoice;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/LanguageChoice;->getAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    const-string/jumbo v0, "nf_offline_manifest"

    const-string/jumbo v1, "Unable to find user forced audio, use default one"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;->mAudioSubtitleDefaultOrderInfoArray:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->getAudioTrackId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "nf_offline_manifest"

    const-string/jumbo v2, "Found forced audio, use it %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/LanguageChoice;->getAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/AudioSource;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/LanguageChoice;->getAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/AudioSource;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getAspectWidthHeight()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;->mAspectRatio:Landroid/util/Pair;

    return-object v0
.end method

.method public getAudioSubtitleDefaultOrderInfo()[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;->mAudioSubtitleDefaultOrderInfoArray:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    return-object v0
.end method

.method public getAudioTrackList()[Lcom/netflix/mediaclient/media/AudioSource;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;->mAudioSourceArray:[Lcom/netflix/mediaclient/media/AudioSource;

    return-object v0
.end method

.method public getBifFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;->mTrickplayUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadContext()Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;->mDc:Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;

    return-object v0
.end method

.method public getDxId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;->mDxId:Ljava/lang/String;

    return-object v0
.end method

.method public getLinks()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;->mLinks:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getMpd()Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;->mMpd:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    return-object v0
.end method

.method public getOfflineKeySetId()[B
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;->mKeySetId:[B

    return-object v0
.end method

.method public getOxId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;->mOxId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitleTrackList()[Lcom/netflix/mediaclient/media/Subtitle;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;->mSubtitleArray:[Lcom/netflix/mediaclient/media/Subtitle;

    return-object v0
.end method

.method public getVideoTrackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/media/manifest/VideoTrack;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflinePlayableManifestImpl;->mVideoTrackList:Ljava/util/List;

    return-object v0
.end method
