.class public final Lcom/netflix/mediaclient/util/log/UIViewLogUtils;
.super Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;
.source "UIViewLogUtils.java"


# static fields
.field public static MISSING_GUID:Ljava/lang/String;

.field public static MISSING_TRACK_ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput v0, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->MISSING_TRACK_ID:I

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->MISSING_GUID:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;-><init>()V

    .line 39
    return-void
.end method

.method public static reportIkoNotificationImpressionEnded(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 314
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.LOG_IKO_NOTIFICATION_IMPRESSION_ENDED"

    invoke-static {p0, v0, v1, v1}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->sendImpressionBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Lorg/json/JSONObject;)V

    .line 315
    return-void
.end method

.method public static reportIkoNotificationImpressionStarted(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 305
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.LOG_IKO_NOTIFICATION_IMPRESSION_START"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->sendImpressionBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Lorg/json/JSONObject;)V

    .line 306
    return-void
.end method

.method public static reportLeftMenuImpressionEnded(Landroid/content/Context;Z)V
    .locals 3

    .prologue
    .line 275
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.LOG_LEFT_PANEL_VIEW_IMPRESSION_ENDED"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->sendImpressionBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Lorg/json/JSONObject;)V

    .line 276
    return-void
.end method

.method public static reportLeftMenuImpressionStarted(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 265
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.LOG_LEFT_PANEL_VIEW_IMPRESSION_START"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->sendImpressionBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Lorg/json/JSONObject;)V

    .line 266
    return-void
.end method

.method public static reportLeftMenuUIViewCommandEnded(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 157
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 161
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOG_LEFT_PANEL_VIEW_CMD_ENDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static reportLeftMenuUIViewCommandStarted(Landroid/content/Context;Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;)V
    .locals 3

    .prologue
    .line 141
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 145
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOG_LEFT_PANEL_VIEW_CMD_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string/jumbo v1, "inputValue"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static reportNotificationImpressionEnded(Landroid/content/Context;Z)V
    .locals 3

    .prologue
    .line 295
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.LOG_NOTIFICATION_IMPRESSION_ENDED"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->sendImpressionBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Lorg/json/JSONObject;)V

    .line 296
    return-void
.end method

.method public static reportNotificationImpressionStarted(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 285
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.LOG_NOTIFICATION_IMPRESSION_START"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->sendImpressionBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Lorg/json/JSONObject;)V

    .line 286
    return-void
.end method

.method public static reportUIViewCommand(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommand(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public static reportUIViewCommand(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 201
    invoke-static {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommandStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Ljava/lang/String;)V

    .line 202
    invoke-static {p0}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommandEnded(Landroid/content/Context;)V

    .line 203
    return-void
.end method

.method public static reportUIViewCommand(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 175
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommandStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 176
    invoke-static {p0}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommandEnded(Landroid/content/Context;)V

    .line 177
    return-void
.end method

.method public static reportUIViewCommandEnded(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 125
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 129
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOG_UIVIEW_CMD_ENDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static reportUIViewCommandStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 50
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommandStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 51
    return-void
.end method

.method public static reportUIViewCommandStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    .line 63
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommandStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 64
    return-void
.end method

.method public static reportUIViewCommandStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 78
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 82
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.LOG_UIVIEW_CMD_START"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    if-eqz p2, :cond_1

    .line 86
    const-string/jumbo v0, "view"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    :cond_1
    if-eqz p3, :cond_2

    .line 90
    const-string/jumbo v0, "inputMethod"

    invoke-virtual {p3}, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    :cond_2
    if-eqz p1, :cond_3

    .line 94
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    :cond_3
    if-eqz p4, :cond_4

    .line 98
    const/4 v0, 0x0

    .line 100
    :try_start_0
    invoke-virtual {p4}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 104
    :goto_1
    const-string/jumbo v2, "dataContext"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    :cond_4
    invoke-static {p5}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 108
    const-string/jumbo v0, "url"

    invoke-virtual {v1, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    :cond_5
    if-eqz p6, :cond_6

    .line 112
    const-string/jumbo v0, "model"

    invoke-virtual {p6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    :cond_6
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    .line 101
    :catch_0
    move-exception v2

    .line 102
    const-string/jumbo v2, "nf_log"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "failed to create dataContext: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p4}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static reportUIViewImpressionEnded(Landroid/content/Context;ZLcom/netflix/mediaclient/service/logging/client/model/Error;)V
    .locals 4

    .prologue
    .line 240
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    :goto_0
    return-void

    .line 244
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.LOG_UIVIEW_IMPRESSION_SESSION_ENDED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string/jumbo v0, "success"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 247
    if-eqz p2, :cond_1

    .line 249
    :try_start_0
    const-string/jumbo v0, "error"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/logging/client/model/Error;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :cond_1
    :goto_1
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    const-string/jumbo v2, "nf_log"

    const-string/jumbo v3, "Failed to put an errror"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static reportUIViewImpressionEvent(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;I)V
    .locals 3

    .prologue
    .line 343
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    :goto_0
    return-void

    .line 347
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOG_UIVIEW_IMPRESSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 348
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    const-string/jumbo v1, "trackId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 350
    if-eqz p1, :cond_1

    .line 351
    const-string/jumbo v1, "cmd"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    :cond_1
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static reportUIViewImpressionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 214
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 218
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOG_UIVIEW_IMPRESSION_SESSION_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    if-eqz p2, :cond_1

    .line 221
    const-string/jumbo v1, "guid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    :cond_1
    if-eqz p1, :cond_2

    .line 225
    const-string/jumbo v1, "view"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    :cond_2
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method private static sendImpressionBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 319
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    :goto_0
    return-void

    .line 323
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 324
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    if-eqz p2, :cond_1

    .line 326
    const-string/jumbo v1, "success"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 328
    :cond_1
    if-eqz p3, :cond_2

    .line 329
    const-string/jumbo v1, "model"

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    :cond_2
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method
