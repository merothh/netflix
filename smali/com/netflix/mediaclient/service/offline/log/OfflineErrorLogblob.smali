.class public final Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;
.super Lcom/netflix/mediaclient/service/logging/offline/OfflineBaseLogblob;
.source "OfflineErrorLogblob.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "offlineErrorLogBlob"


# instance fields
.field private final mShouldSendNow:Z


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0, p3, p4}, Lcom/netflix/mediaclient/service/logging/offline/OfflineBaseLogblob;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->mSeverity:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "level"

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/LogArguments$LogLevel;->ERROR:Lcom/netflix/mediaclient/javabridge/ui/LogArguments$LogLevel;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/javabridge/ui/LogArguments$LogLevel;->getLevel()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 43
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "mid"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    :cond_0
    invoke-static {p6}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "errormsg"

    invoke-virtual {v0, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    :cond_1
    invoke-static {p5}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "errorcode"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    :cond_2
    iput-boolean p7, p0, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->mShouldSendNow:Z

    .line 55
    return-void
.end method

.method public static sendBladerunnerError(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 75
    if-nez p0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 77
    :cond_0
    :try_start_0
    invoke-static {p4}, Lcom/netflix/mediaclient/util/LogUtils;->getErrorCodeForServerLogs(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    move-result-object v5

    .line 78
    invoke-static {p4}, Lcom/netflix/mediaclient/util/LogUtils;->getErrorMessageForServerLogs(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    move-result-object v6

    .line 79
    new-instance v0, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->error:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    const/4 v7, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;-><init>(Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    const-string/jumbo v1, "offlineErrorLogBlob"

    const-string/jumbo v2, "JSONException:"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v9

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 82
    :catch_1
    move-exception v0

    .line 83
    const-string/jumbo v1, "offlineErrorLogBlob"

    const-string/jumbo v2, "Exception:"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v9

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static sendDownloadStopError(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 90
    if-nez p0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    :try_start_0
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->error:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    .line 94
    sget-object v0, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob$1;->$SwitchMap$com$netflix$mediaclient$servicemgr$interface_$offline$StopReason:[I

    invoke-virtual {p4}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 134
    const-string/jumbo v0, "offlineErrorLogBlob"

    const-string/jumbo v2, " onDownloadStopped stopReason: %s, no-op"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p4, v3, v4

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v8

    .line 137
    :goto_1
    if-eqz v0, :cond_0

    .line 138
    invoke-static {p4}, Lcom/netflix/mediaclient/util/UserVisibleErrorCodeGenerator;->getOfflineErrorCodeForStoppedDownload(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)Ljava/lang/String;

    move-result-object v5

    .line 139
    new-instance v0, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;

    const-string/jumbo v6, "downloadStopError"

    const/4 v7, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;-><init>(Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    const-string/jumbo v1, "offlineErrorLogBlob"

    const-string/jumbo v2, "JSONException:"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :pswitch_0
    move v0, v8

    .line 99
    goto :goto_1

    :pswitch_1
    move v0, v8

    .line 104
    goto :goto_1

    .line 107
    :pswitch_2
    :try_start_1
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->error:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    move v0, v9

    .line 108
    goto :goto_1

    .line 111
    :pswitch_3
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->warn:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    move v0, v9

    .line 112
    goto :goto_1

    .line 115
    :pswitch_4
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->info:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    move v0, v9

    .line 116
    goto :goto_1

    .line 119
    :pswitch_5
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->error:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    move v0, v9

    .line 120
    goto :goto_1

    .line 123
    :pswitch_6
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->error:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    move v0, v9

    .line 124
    goto :goto_1

    .line 127
    :pswitch_7
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->error:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    move v0, v9

    .line 128
    goto :goto_1

    .line 131
    :pswitch_8
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->info:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v9

    .line 132
    goto :goto_1

    .line 143
    :catch_1
    move-exception v0

    .line 144
    const-string/jumbo v1, "offlineErrorLogBlob"

    const-string/jumbo v2, "Exception:"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static sendNetflixJobStartLogBlob(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 166
    if-nez p0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 168
    :cond_0
    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->info:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    const-string/jumbo v2, "-1"

    const-string/jumbo v3, "-1"

    const-string/jumbo v4, "-1"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->getIntValue()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "NetflixStartJob"

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;-><init>(Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    const-string/jumbo v1, "offlineErrorLogBlob"

    const-string/jumbo v2, "JSONException:"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 171
    :catch_1
    move-exception v0

    .line 172
    const-string/jumbo v1, "offlineErrorLogBlob"

    const-string/jumbo v2, "Exception:"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static sendNotEnoughSpaceLogBlob(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 151
    if-nez p0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 153
    :cond_0
    :try_start_0
    invoke-static {p4}, Lcom/netflix/mediaclient/util/LogUtils;->getErrorCodeForServerLogs(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    move-result-object v5

    .line 154
    invoke-static {p4}, Lcom/netflix/mediaclient/util/LogUtils;->getErrorMessageForServerLogs(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    move-result-object v6

    .line 155
    new-instance v0, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->warn:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;-><init>(Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    const-string/jumbo v1, "offlineErrorLogBlob"

    const-string/jumbo v2, "JSONException:"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 158
    :catch_1
    move-exception v0

    .line 159
    const-string/jumbo v1, "offlineErrorLogBlob"

    const-string/jumbo v2, "Exception:"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method


# virtual methods
.method public getSeverity()Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->mSeverity:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->OFFLINE_LOGBLOB_TYPE:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public shouldSendNow()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->mShouldSendNow:Z

    return v0
.end method
