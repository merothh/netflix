.class public Lcom/netflix/mediaclient/servicemgr/OfflineDialogLogblob;
.super Lcom/netflix/mediaclient/service/logging/offline/OfflineBaseLogblob;
.source "OfflineDialogLogblob.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "offlineDialogLogblob"


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 32
    invoke-direct {p0, p3, p4}, Lcom/netflix/mediaclient/service/logging/offline/OfflineBaseLogblob;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/OfflineDialogLogblob;->mSeverity:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    .line 34
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/OfflineDialogLogblob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "level"

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/LogArguments$LogLevel;->ERROR:Lcom/netflix/mediaclient/javabridge/ui/LogArguments$LogLevel;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/javabridge/ui/LogArguments$LogLevel;->getLevel()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 35
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/OfflineDialogLogblob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "mid"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    :cond_0
    invoke-static {p5}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/OfflineDialogLogblob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "errorcode"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    :cond_1
    invoke-static {p6}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/OfflineDialogLogblob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "errormsg"

    invoke-virtual {v0, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    :cond_2
    return-void
.end method

.method public static sendLogblob(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;)V
    .locals 8

    .prologue
    .line 59
    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-static {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getServiceManager(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getLogblobLogging()Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    move-result-object v7

    .line 74
    if-eqz v7, :cond_0

    .line 78
    invoke-static {p4}, Lcom/netflix/mediaclient/util/UserVisibleErrorCodeGenerator;->getOfflineErrorCodeForCompleteDownload(Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;)Ljava/lang/String;

    move-result-object v5

    .line 80
    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/OfflineDialogLogblob;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->error:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    const-string/jumbo v6, "offlineWatchError"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/servicemgr/OfflineDialogLogblob;-><init>(Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    const-string/jumbo v1, "offlineDialogLogblob"

    const-string/jumbo v2, "JSONException:"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 83
    :catch_1
    move-exception v0

    .line 84
    const-string/jumbo v1, "offlineDialogLogblob"

    const-string/jumbo v2, "Exception:"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->OFFLINE_LOGBLOB_TYPE:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public shouldSendNow()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method
