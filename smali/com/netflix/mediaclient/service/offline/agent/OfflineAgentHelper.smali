.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;
.super Ljava/lang/Object;
.source "OfflineAgentHelper.java"


# static fields
.field private static final DISK_FREE_SPACE_SAFETY_MARGIN:J = 0x2faf080L

.field private static final TAG:Ljava/lang/String; = "nf_offlineAgent"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyGeoPlayabilityFlags(Ljava/util/Map;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 121
    :cond_0
    return-void

    .line 112
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    .line 113
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 114
    if-eqz v1, :cond_2

    .line 115
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 116
    const-string/jumbo v3, "nf_offlineAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleGeoPlayabilityUpdated playableId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPlayableId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " geoWatchable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_3
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOfflineViewablePersistentData()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setGeoBlocked(Z)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static ensureEnoughDiskSpaceForNewRequest(Ljava/lang/String;Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 54
    const-wide/32 v0, 0x2faf080

    .line 55
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    .line 56
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v1

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Complete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eq v1, v5, :cond_2

    .line 57
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getTotalEstimatedSpace()J

    move-result-wide v6

    .line 58
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getCurrentEstimatedSpace()J

    move-result-wide v0

    sub-long v0, v6, v0

    add-long/2addr v0, v2

    :goto_1
    move-wide v2, v0

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->getFreeSpaceOnFileSystem(Ljava/io/File;)J

    move-result-wide v0

    .line 62
    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    .line 63
    const-string/jumbo v4, "nf_offlineAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ensureEnoughDiskSpaceForNewRequest freeSpaceNeeded="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " freeSpaceOnFileSystem="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v0, 0x0

    .line 67
    :goto_2
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method

.method static findNextCreatingStatePlayable(Ljava/util/List;)Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;",
            ">;)",
            "Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;"
        }
    .end annotation

    .prologue
    .line 161
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    .line 162
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Creating:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v2, v3, :cond_0

    .line 166
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getCompletedVideoIds(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    .line 44
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Complete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v3, v4, :cond_0

    .line 45
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 48
    :cond_1
    return-object v1
.end method

.method static getLastMaintenanceJobStartTime(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 170
    const-string/jumbo v0, "pref_offline_maintenance_job_start_time"

    const-wide/16 v2, -0x1

    invoke-static {p0, v0, v2, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getLongPref(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static getOfflineViewableByPlayableId(Ljava/lang/String;Ljava/util/List;)Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;",
            ">;)",
            "Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 73
    if-nez p0, :cond_0

    move-object v0, v1

    .line 81
    :goto_0
    return-object v0

    .line 76
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    .line 77
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPlayableId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 81
    goto :goto_0
.end method

.method static hasPrimaryProfileGuidChanged(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;)Z
    .locals 6

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getPrimaryProfileGuid()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->getPrimaryProfileGuid()Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    const-string/jumbo v3, "nf_offlineAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "newPrimaryProfileGuid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " primaryProfileGuidInRegistry="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    const-string/jumbo v1, "nf_offlineAgent"

    const-string/jumbo v2, "primaryProfileGuid match"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_1
    :goto_0
    return v0

    .line 100
    :cond_2
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "primaryProfileGuid don\'t match... going to delete all content"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static sendOfflineNotAvailableLogblob(Lcom/netflix/mediaclient/service/NrdController;Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;)V
    .locals 7

    .prologue
    .line 178
    if-nez p0, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NrdController;->getNrdp()Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_0

    .line 183
    new-instance v1, Lcom/netflix/mediaclient/javabridge/ui/LogArguments;

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/LogArguments$LogLevel;->INFO:Lcom/netflix/mediaclient/javabridge/ui/LogArguments$LogLevel;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "offline feature n/a, code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->getCodeForLogblob()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->OFFLINE_LOGBLOB_TYPE:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->getValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/netflix/mediaclient/javabridge/ui/LogArguments;-><init>(Lcom/netflix/mediaclient/javabridge/ui/LogArguments$LogLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 184
    const-string/jumbo v2, "nf_offlineAgent"

    const-string/jumbo v3, "sending offline not available logblob=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 185
    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->getLog()Lcom/netflix/mediaclient/javabridge/ui/Log;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/Log;->log(Lcom/netflix/mediaclient/javabridge/ui/LogArguments;)V

    goto :goto_0
.end method

.method static setLastMaintenanceJobStartTime(Landroid/content/Context;J)V
    .locals 1

    .prologue
    .line 174
    const-string/jumbo v0, "pref_offline_maintenance_job_start_time"

    invoke-static {p0, v0, p1, p2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putLongPref(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 175
    return-void
.end method

.method static updateBookmarkIfNewer(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v0, 0x1

    .line 135
    if-nez p1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    .line 137
    if-eqz v1, :cond_0

    .line 139
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableBookmarkPosition()I

    move-result v2

    .line 140
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableBookmarkUpdateTime()J

    move-result-wide v4

    .line 141
    const/4 v1, 0x0

    .line 143
    invoke-static {}, Lcom/netflix/mediaclient/media/BookmarkStore;->getInstance()Lcom/netflix/mediaclient/media/BookmarkStore;

    move-result-object v3

    invoke-virtual {v3, p2, p0}, Lcom/netflix/mediaclient/media/BookmarkStore;->getBookmark(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;

    move-result-object v3

    .line 144
    if-nez v3, :cond_2

    .line 145
    const-string/jumbo v1, "nf_offlineAgent"

    const-string/jumbo v3, "updateBookmarkIfNewer bookmarkStore has no bookmark"

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_1
    if-eqz v0, :cond_0

    .line 154
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "updateBookmarkIfNewer calling BookmarkStore.setBookmark"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {}, Lcom/netflix/mediaclient/media/BookmarkStore;->getInstance()Lcom/netflix/mediaclient/media/BookmarkStore;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;

    invoke-direct {v1, v2, v4, v5, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;-><init>(IJLjava/lang/String;)V

    invoke-virtual {v0, p2, v1}, Lcom/netflix/mediaclient/media/BookmarkStore;->setBookmark(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;)V

    goto :goto_0

    .line 147
    :cond_2
    iget-wide v6, v3, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;->mBookmarkUpdateTimeInUTCMs:J

    cmp-long v3, v6, v4

    if-gez v3, :cond_3

    .line 148
    const-string/jumbo v1, "nf_offlineAgent"

    const-string/jumbo v3, "updateBookmarkIfNewer bookmarkStore is older"

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 151
    :cond_3
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v3, "updateBookmarkIfNewer bookmarkStore is newer"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_1
.end method
