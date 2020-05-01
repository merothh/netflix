.class public Lcom/netflix/mediaclient/service/pdslogging/PdsLoggingUtils;
.super Ljava/lang/Object;
.source "PdsLoggingUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downloadStoppedOnError(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 28
    sget-object v0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->STOP_DOWNLOAD_ERROR:Ljava/lang/String;

    .line 29
    invoke-static {p2}, Lcom/netflix/mediaclient/util/LogUtils;->getErrorCodeForServerLogs(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/netflix/mediaclient/util/LogUtils;->getErrorMessageForServerLogs(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-static {p0, v0, p1, v1, v2}, Lcom/netflix/mediaclient/service/pdslogging/PdsLoggingUtils;->sendIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static downloadStoppedOnLicenseError(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 16
    sget-object v0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->STOP_DOWNLOAD_LICENSE_ERROR:Ljava/lang/String;

    .line 17
    invoke-static {p2}, Lcom/netflix/mediaclient/util/LogUtils;->getErrorCodeForServerLogs(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/netflix/mediaclient/util/LogUtils;->getErrorMessageForServerLogs(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-static {p0, v0, p1, v1, v2}, Lcom/netflix/mediaclient/service/pdslogging/PdsLoggingUtils;->sendIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static downloadStoppedOnManifestExpiry(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 22
    sget-object v0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->STOP_DOWNLOAD_MANIFEST_EXPIRED:Ljava/lang/String;

    .line 23
    invoke-static {p2}, Lcom/netflix/mediaclient/util/LogUtils;->getErrorCodeForServerLogs(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/netflix/mediaclient/util/LogUtils;->getErrorMessageForServerLogs(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-static {p0, v0, p1, v1, v2}, Lcom/netflix/mediaclient/service/pdslogging/PdsLoggingUtils;->sendIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method private static sendIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    sget-object v1, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->CATEGORY_NF_PDSLOG_DOWNLOAD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    sget-object v1, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->EXTRA_PLAYABLE_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    sget-object v1, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->EXTRA_ERROR_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    sget-object v1, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->EXTRA_ERROR_MESSAGE:Ljava/lang/String;

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 39
    return-void
.end method
