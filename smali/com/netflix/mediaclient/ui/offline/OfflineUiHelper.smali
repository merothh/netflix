.class public Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper;
.super Ljava/lang/Object;
.source "OfflineUiHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "offlineUiHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSnackBarDownloadCompleteCount(Landroid/content/Context;)I
    .locals 2

    const-string/jumbo v0, "prefs_offline_snackbar_dl_complete_count"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static hasErrorOrWarning(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)Z
    .locals 2

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getLastPersistentStatus()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/app/Status;->isErrorOrWarning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Stopped:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_1

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getStopReason()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->showBangIconErrorInUi()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static incrementSnackBarDownloadCompleteCount(Landroid/content/Context;)V
    .locals 6

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper;->getSnackBarDownloadCompleteCount(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string/jumbo v1, "offlineUiHelper"

    const-string/jumbo v2, "incrementSnackBarDownloadCompleteCount count=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string/jumbo v1, "prefs_offline_snackbar_dl_complete_count"

    invoke-static {p0, v1, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putIntPref(Landroid/content/Context;Ljava/lang/String;I)Z

    return-void
.end method

.method public static isFullyDownloadedAndNotWatchable(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)Z
    .locals 2

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Complete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getWatchState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFullyDownloadedAndWatchable(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)Z
    .locals 2

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Complete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getWatchState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->hasError()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUserSwiped(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "prefs_offline_snackbar_user_swiped"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static resetSnackBarDownloadCompleteCount(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "offlineUiHelper"

    const-string/jumbo v1, "resetSnackBarDownloadCompleteCount count=0"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "prefs_offline_snackbar_dl_complete_count"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putIntPref(Landroid/content/Context;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setUserSwiped(Landroid/content/Context;Z)V
    .locals 1

    const-string/jumbo v0, "prefs_offline_snackbar_user_swiped"

    invoke-static {p0, v0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static showAvailableDownloadsGenreList(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper$1;

    const-string/jumbo v2, "offlineUiHelper"

    invoke-direct {v1, v2, p0}, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper$1;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchGenreLists(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0
.end method

.method public static startOfflinePlayback(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 6

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->getContextAs(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-nez v0, :cond_1

    const-string/jumbo v0, "offlineUiHelper"

    const-string/jumbo v1, "netflixActivity is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v2

    if-nez v2, :cond_2

    const-string/jumbo v0, "offlineUiHelper"

    const-string/jumbo v1, "serviceManager is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getOfflineAgentOrNull(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v1

    if-nez v1, :cond_3

    const-string/jumbo v0, "offlineUiHelper"

    const-string/jumbo v1, "offlineAgentInterface is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->getOfflineVideoDetails(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    move-result-object v3

    if-nez v3, :cond_4

    const-string/jumbo v0, "offlineUiHelper"

    const-string/jumbo v1, "videoDetails is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v4

    if-nez v4, :cond_5

    const-string/jumbo v0, "offlineUiHelper"

    const-string/jumbo v1, "playable is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    if-nez p2, :cond_6

    const-string/jumbo v0, "offlineUiHelper"

    const-string/jumbo v1, "type is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    invoke-interface {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->getOfflinePlayableViewData(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    move-result-object v1

    if-nez v1, :cond_7

    const-string/jumbo v0, "offlineUiHelper"

    const-string/jumbo v1, "offlinePlayableViewData is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v1

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Complete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eq v1, v5, :cond_8

    const-string/jumbo v0, "offlineUiHelper"

    const-string/jumbo v1, "download is not complete yet"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, p3, v3}, Lcom/netflix/mediaclient/servicemgr/Asset;->create(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;Z)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v3

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableBookmarkPosition()I

    move-result v1

    invoke-static {}, Lcom/netflix/mediaclient/media/BookmarkStore;->getInstance()Lcom/netflix/mediaclient/media/BookmarkStore;

    move-result-object v5

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfileGuidOrNull()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2, p1}, Lcom/netflix/mediaclient/media/BookmarkStore;->getBookmark(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;

    move-result-object v2

    if-eqz v2, :cond_9

    iget v1, v2, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;->mBookmarkInSecond:I

    :cond_9
    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getEndtime()I

    move-result v2

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getRuntime()I

    move-result v4

    invoke-static {v1, v2, v4}, Lcom/netflix/mediaclient/util/TimeUtils;->computePlayPos(III)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/netflix/mediaclient/servicemgr/Asset;->setPlaybackBookmark(I)V

    invoke-static {v0, v3, v1}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->startPlaybackAfterPIN(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;I)V

    goto/16 :goto_0
.end method
