.class public Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;
.super Ljava/lang/Object;
.source "OfflineUtils.java"


# static fields
.field public static final DOWNLOADS_LOLOMO_GENRE_ID:Ljava/lang/String; = "1647397"

.field private static final TAG:Ljava/lang/String; = "nf_offlineUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areAllDownloadablesStillFound(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/AudioDownloadableInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/VideoDownloadableInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/SubtitleDownloadableInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/TrickPlayDownloadableInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 147
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mAudioDownloadablePersistentList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 148
    const-string/jumbo v1, "nf_offlineUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "missing audio downloadables. expected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mAudioDownloadablePersistentList:Ljava/util/List;

    .line 149
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " got="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 150
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :goto_0
    return v0

    .line 154
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mVideoDownloadablePersistentList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 155
    const-string/jumbo v1, "nf_offlineUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "missing video downloadables. expected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mVideoDownloadablePersistentList:Ljava/util/List;

    .line 156
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " got="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 157
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 162
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mSubtitleDownloadablePersistentList:Ljava/util/List;

    .line 163
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 164
    const-string/jumbo v1, "nf_offlineUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "missing timed-text downloadables. expected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mSubtitleDownloadablePersistentList:Ljava/util/List;

    .line 165
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " got="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 166
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    :cond_2
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mTrickPlayDownloadablePersistentList:Ljava/util/List;

    .line 172
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 173
    const-string/jumbo v1, "nf_offlineUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "missing tickPlay downloadables. expected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mTrickPlayDownloadablePersistentList:Ljava/util/List;

    .line 174
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " got="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 175
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 182
    :cond_3
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public static canStartDownload(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)Z
    .locals 2

    .prologue
    .line 60
    invoke-interface {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Stopped:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_0

    .line 61
    invoke-interface {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->canResumeWithoutUserAction()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 60
    :goto_0
    return v0

    .line 61
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cdnUrlExpiredOrMoved(I)Z
    .locals 1

    .prologue
    .line 124
    const/16 v0, 0x193

    if-eq p0, v0, :cond_0

    const/16 v0, 0x194

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static deletePlayableDirectory(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 114
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    const/4 v0, 0x1

    .line 116
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    invoke-static {v1}, Lcom/netflix/mediaclient/util/AndroidUtils;->deleteDir(Ljava/io/File;)Z

    move-result v0

    .line 119
    :cond_0
    return v0
.end method

.method public static getAudioSourceArrayForDownloadables(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Ljava/util/List;)[Lcom/netflix/mediaclient/media/AudioSource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/player/manifest/NfManifest;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Lcom/netflix/mediaclient/media/AudioSource;"
        }
    .end annotation

    .prologue
    .line 193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 194
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 196
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestUtils;->getAudioSourceForDownloadable(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Ljava/lang/String;)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 201
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/netflix/mediaclient/media/AudioSource;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/media/AudioSource;

    .line 202
    return-object v0
.end method

.method public static getDownloadableList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;

    .line 75
    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/DownloadablePersistentData;->mDownloadableId:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_0
    return-object v1
.end method

.method public static getKeySetIdOrNull(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)[B
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mLicenseData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mKeySetId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mLicenseData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mKeySetId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->keySetIdFromString(Ljava/lang/String;)[B

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMaintenanceJobPeriodMsFromPref(Landroid/content/Context;J)J
    .locals 3

    .prologue
    .line 279
    const-string/jumbo v0, "offline_maintenace_job_period"

    invoke-static {p0, v0, p1, p2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getLongPref(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getOfflineSubtitleForDownloadables(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/player/manifest/NfManifest;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/media/Subtitle;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 253
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 254
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getSubtitleTracks(J)Ljava/util/List;

    move-result-object v0

    .line 257
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/SubtitleTrackData;

    .line 258
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 259
    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/SubtitleTrackData;->getUrls()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/SubtitleTrackData;->getUrls()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadableId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/util/StringUtils;->notEmptyAndEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 261
    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/SubtitleTrackData;->getSubtitleInfo()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v2

    .line 262
    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/SubtitleTrackData;->getUrls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/SubtitleUrl;

    .line 264
    sget-object v5, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->Subtitle:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    invoke-static {p2, v1, v5}, Lcom/netflix/mediaclient/service/offline/utils/OfflinePathUtils;->getFilePathForDownloadable(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Ljava/lang/String;

    move-result-object v5

    .line 265
    invoke-static {v2, v0, v5}, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;->newInstance(Lcom/netflix/mediaclient/media/Subtitle;Lcom/netflix/mediaclient/media/SubtitleUrl;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;

    move-result-object v0

    .line 266
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string/jumbo v2, "nf_offlineUtils"

    const-string/jumbo v5, "Downloadable ID: %s: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v7

    const/4 v1, 0x1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-static {v2, v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 271
    :cond_2
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 275
    :cond_3
    return-object v3
.end method

.method public static getSubTitleArrayForDownloadables(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Ljava/util/List;Ljava/lang/String;)[Lcom/netflix/mediaclient/media/Subtitle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/player/manifest/NfManifest;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[",
            "Lcom/netflix/mediaclient/media/Subtitle;"
        }
    .end annotation

    .prologue
    .line 236
    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->getOfflineSubtitleForDownloadables(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 238
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 239
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lcom/netflix/mediaclient/media/Subtitle;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/media/Subtitle;

    .line 240
    return-object v0
.end method

.method public static getVideoTracks(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/player/manifest/NfManifest;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/media/manifest/VideoTrack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 213
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getVideoTracks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/manifest/VideoTrack;

    .line 214
    iget-object v1, v0, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->streams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/media/manifest/Stream;

    .line 215
    if-eqz p1, :cond_2

    iget-object v1, v1, Lcom/netflix/mediaclient/media/manifest/Stream;->downloadable_id:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 222
    :cond_3
    return-object v2
.end method

.method public static hasManifestExpired(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)Z
    .locals 5

    .prologue
    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getManifestExpiryInEndPointTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 134
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 135
    const-string/jumbo v2, "nf_offlineUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "manifestExpired by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v0, 0x1

    .line 138
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCdnUrlGeoCheckError(I)Z
    .locals 1

    .prologue
    .line 129
    const/16 v0, 0x1a4

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDownloading(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)Z
    .locals 2

    .prologue
    .line 66
    invoke-interface {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->InProgress:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static keySetIdFromString(Ljava/lang/String;)[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 99
    :try_start_0
    const-string/jumbo v0, "utf-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 100
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    const-string/jumbo v1, "nf_offlineUtils"

    const-string/jumbo v2, "keySetIdFromString UnsupportedEncodingException"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 104
    new-array v0, v4, [B

    goto :goto_0
.end method

.method public static keySetIdToString([B)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 82
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    const-string/jumbo v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-object v0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    const-string/jumbo v1, "nf_offlineUtils"

    const-string/jumbo v2, "keySetIdToString UnsupportedEncodingException"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 86
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static setMaintenanceJobPeriodMsToPref(Landroid/content/Context;J)V
    .locals 1

    .prologue
    .line 284
    const-string/jumbo v0, "offline_maintenace_job_period"

    invoke-static {p0, v0, p1, p2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putLongPref(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 286
    return-void
.end method
