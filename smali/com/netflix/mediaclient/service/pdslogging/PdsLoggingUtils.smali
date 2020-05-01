.class public Lcom/netflix/mediaclient/service/pdslogging/PdsLoggingUtils;
.super Ljava/lang/Object;
.source "PdsLoggingUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downloadStoppedOnError(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    sget-object v0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->STOP_DOWNLOAD_ERROR:Ljava/lang/String;

    invoke-static {p2}, Lcom/netflix/mediaclient/util/LogUtils;->getErrorCodeForServerLogs(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/netflix/mediaclient/util/LogUtils;->getErrorMessageForServerLogs(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, p1, v1, v2}, Lcom/netflix/mediaclient/service/pdslogging/PdsLoggingUtils;->sendIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static downloadStoppedOnLicenseError(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    sget-object v0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->STOP_DOWNLOAD_LICENSE_ERROR:Ljava/lang/String;

    invoke-static {p2}, Lcom/netflix/mediaclient/util/LogUtils;->getErrorCodeForServerLogs(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/netflix/mediaclient/util/LogUtils;->getErrorMessageForServerLogs(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, p1, v1, v2}, Lcom/netflix/mediaclient/service/pdslogging/PdsLoggingUtils;->sendIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static downloadStoppedOnManifestExpiry(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    sget-object v0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->STOP_DOWNLOAD_MANIFEST_EXPIRED:Ljava/lang/String;

    invoke-static {p2}, Lcom/netflix/mediaclient/util/LogUtils;->getErrorCodeForServerLogs(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/netflix/mediaclient/util/LogUtils;->getErrorMessageForServerLogs(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, p1, v1, v2}, Lcom/netflix/mediaclient/service/pdslogging/PdsLoggingUtils;->sendIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static sendIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->CATEGORY_NF_PDSLOG_DOWNLOAD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->EXTRA_PLAYABLE_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->EXTRA_ERROR_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->EXTRA_ERROR_MESSAGE:Ljava/lang/String;

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method
