.class public final Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;
.super Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;
.source "CustomerServiceLogUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;-><init>()V

    return-void
.end method

.method public static reportBackToDialScreen(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;)V
    .locals 3

    .prologue
    .line 210
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    const-string/jumbo v0, "Orientation can not be null!"

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOG_CS_CALL_UI_BACK_TO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    if-eqz p1, :cond_2

    .line 221
    const-string/jumbo v1, "source"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    :cond_2
    const-string/jumbo v1, "orientation"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    if-eqz p3, :cond_3

    .line 225
    const-string/jumbo v1, "using"

    invoke-virtual {p3}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    :cond_3
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static reportCallConnected(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;)V
    .locals 3

    .prologue
    .line 145
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    const-string/jumbo v0, "Initial call quality can not be null!"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOG_CS_CALL_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string/jumbo v1, "call_quality"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static reportCallQualityChanged(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;)V
    .locals 3

    .prologue
    .line 167
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    const-string/jumbo v0, "New call quality can not be null!"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOG_CS_CALL_SESSION_QUALITY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string/jumbo v1, "call_quality"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static reportCallSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V
    .locals 4

    .prologue
    .line 111
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    const-string/jumbo v0, "Reason can not be null!"

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    const-string/jumbo v0, "Termination reason can not be null!"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.LOG_CS_CALL_SESSION_ENDED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string/jumbo v0, "reason"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string/jumbo v0, "terminationReason"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    if-eqz p3, :cond_2

    .line 129
    :try_start_0
    const-string/jumbo v0, "error"

    invoke-virtual {p3}, Lcom/netflix/mediaclient/service/logging/client/model/Error;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :cond_2
    :goto_1
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    const-string/jumbo v2, "nf_log"

    const-string/jumbo v3, "Failed to get JSON string from UIError"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static reportCallSessionStarted(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 90
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 94
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOG_CS_CALL_SESSION_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string/jumbo v1, "uuid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string/jumbo v1, "displayed"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static reportExitFromDialScreen(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;)V
    .locals 3

    .prologue
    .line 189
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 193
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOG_CS_CALL_UI_EXIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    if-eqz p1, :cond_1

    .line 196
    const-string/jumbo v1, "action"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    :cond_1
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static reportHelpRequestSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V
    .locals 4

    .prologue
    .line 51
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    const-string/jumbo v0, "Reason can not be null!"

    invoke-static {p3, v0}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.LOG_CS_HELP_SESSION_ENDED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string/jumbo v0, "reason"

    invoke-virtual {p3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    if-eqz p1, :cond_2

    .line 64
    const-string/jumbo v0, "action"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    :cond_2
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    const-string/jumbo v0, "url"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    :cond_3
    if-eqz p4, :cond_4

    .line 73
    :try_start_0
    const-string/jumbo v0, "error"

    invoke-virtual {p4}, Lcom/netflix/mediaclient/service/logging/client/model/Error;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_4
    :goto_1
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    const-string/jumbo v2, "nf_log"

    const-string/jumbo v3, "Failed to get JSON string from UIError"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static reportHelpRequestSessionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;)V
    .locals 3

    .prologue
    .line 30
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    :goto_0
    return-void

    .line 34
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOG_CS_HELP_SESSION_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    if-eqz p1, :cond_1

    .line 37
    const-string/jumbo v1, "entry"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    :cond_1
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method
