.class public final Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final PServiceLoggingLock:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "nf_widget_log"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;->PServiceLoggingLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildPreAppWidgetCommandLogSessionData(Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData;)Lorg/json/JSONObject;
    .locals 0

    .line 156
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;->toJSON()Lorg/json/JSONObject;

    move-result-object p0

    .line 157
    invoke-virtual {p1, p0}, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData;->toJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static getStoredLogEventsString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "pservice_actions_to_log"

    const/4 v1, 0x0

    .line 161
    invoke-static {p0, v0, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWidgetSize(Landroid/content/Context;I)Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;
    .locals 4

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p0

    .line 48
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object p0

    .line 50
    new-instance p1, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;

    const-string v0, "appWidgetMinWidth"

    .line 51
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "appWidgetMaxWidth"

    .line 52
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "appWidgetMinHeight"

    .line 53
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "appWidgetMaxHeight"

    .line 54
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;-><init>(IIII)V

    return-object p1
.end method

.method private static isNewInstall(Landroid/content/Context;[I)Z
    .locals 7

    const-string v0, "pservice_widget_ids"

    const/4 v1, 0x0

    .line 123
    invoke-static {p0, v0, v1}, Lo/aer;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 124
    array-length v4, p1

    const/4 v5, 0x1

    if-le v4, v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    array-length v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const-string v4, "nf_widget_log"

    const-string v6, "isNewIntall ? %s, ids.length %s, idsPerPref %s"

    invoke-static {v4, v6, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 125
    array-length p1, p1

    if-le p1, v2, :cond_1

    add-int/2addr v2, v5

    .line 126
    invoke-static {p0, v0, v2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return v5

    :cond_1
    return v1
.end method

.method private static putLogEvents(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "pservice_actions_to_log"

    .line 165
    invoke-static {p0, v0, p1}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static readAndClearStoredLog(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 71
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;->PServiceLoggingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 72
    :try_start_0
    invoke-static {p0}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;->getStoredLogEventsString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 73
    invoke-static {p0, v2}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;->putLogEvents(Landroid/content/Context;Ljava/lang/String;)V

    .line 74
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static reportStoredLogEvents(Landroid/content/Context;[I)V
    .locals 7

    .line 83
    invoke-static {p0}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;->readAndClearStoredLog(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v0}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;->createFromJsonString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;

    move-result-object v0

    const-string v1, "nf_widget_log"

    if-eqz v0, :cond_5

    .line 86
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;->getWidgetEvents()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;->getWidgetEvents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 92
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;->getWidgetEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent;

    .line 93
    sget-object v3, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging$1;->$SwitchMap$com$netflix$mediaclient$service$pservice$logging$PreAppWidgetLogActionData$PreAppWidgetActionName:[I

    iget-object v4, v2, Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent;->action:Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v3, v5, :cond_3

    const/4 v6, 0x2

    if-eq v3, v6, :cond_2

    new-array v3, v5, [Ljava/lang/Object;

    .line 107
    iget-object v5, v2, Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent;->action:Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;

    aput-object v5, v3, v4

    const-string v4, "Found %s event on disk, sending to sever"

    invoke-static {v1, v4, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 108
    iget-object v3, v2, Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent;->widgetSize:Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;->createInstance(Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;)Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;

    move-result-object v3

    .line 109
    new-instance v4, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent;->action:Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;

    invoke-direct {v4, v2}, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData;-><init>(Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;)V

    .line 110
    invoke-static {v3, v4}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;->sendWidgetCommandLogViaClv2(Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData;)V

    goto :goto_0

    :cond_2
    const-string v3, "Found delete event on disk, sending to sever"

    .line 102
    invoke-static {v1, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;->updateWidgetCount(Landroid/content/Context;[I)V

    .line 104
    iget-object v2, v2, Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent;->widgetSize:Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;->createInstance(Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;)Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;

    goto :goto_0

    .line 95
    :cond_3
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;->isNewInstall(Landroid/content/Context;[I)Z

    move-result v3

    new-array v5, v5, [Ljava/lang/Object;

    .line 96
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    const-string v4, "Found install event on disk, to sending to sever ? %s"

    invoke-static {v1, v4, v5}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz v3, :cond_1

    .line 98
    iget-object v2, v2, Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent;->widgetSize:Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;->createInstance(Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;)Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    :goto_1
    const-string p0, "no widget logs on disk. "

    .line 87
    invoke-static {v1, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static sendWidgetCommandLogViaClv2(Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData;)V
    .locals 2

    .line 145
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;->buildPreAppWidgetCommandLogSessionData(Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData;)Lorg/json/JSONObject;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p1, v0

    const-string v0, "nf_widget_log"

    const-string v1, "widget command %s"

    .line 146
    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :try_start_0
    const-string p1, "type"

    .line 148
    sget-object v0, Lcom/netflix/cl/util/ExtCLUtils$DebugSessionType;->PreAppWidget:Lcom/netflix/cl/util/ExtCLUtils$DebugSessionType;

    invoke-virtual {v0}, Lcom/netflix/cl/util/ExtCLUtils$DebugSessionType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :catch_0
    new-instance p1, Lcom/netflix/cl/model/event/session/DebugSession;

    invoke-direct {p1, p0}, Lcom/netflix/cl/model/event/session/DebugSession;-><init>(Lorg/json/JSONObject;)V

    .line 151
    sget-object p0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p0, p1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    .line 152
    sget-object p0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p1}, Lcom/netflix/cl/model/event/session/DebugSession;->getSessionId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    return-void
.end method

.method public static storeInstallLogEvent(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;I)V
    .locals 0

    .line 43
    invoke-static {p0, p2}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;->getWidgetSize(Landroid/content/Context;I)Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;->storeLogEvent(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;)V

    return-void
.end method

.method public static storeLogEvent(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;)V
    .locals 2

    .line 39
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;-><init>(IIII)V

    invoke-static {p0, p1, v0}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;->storeLogEvent(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;)V

    return-void
.end method

.method private static storeLogEvent(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;)V
    .locals 1

    .line 58
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent;-><init>(Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;)V

    .line 59
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;->PServiceLoggingLock:Ljava/lang/Object;

    monitor-enter p1

    .line 60
    :try_start_0
    invoke-static {p0}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;->getStoredLogEventsString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 61
    invoke-static {p2}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;->createFromJsonString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;

    move-result-object p2

    .line 62
    invoke-virtual {p2, v0}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;->addWidgetEvent(Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent;)V

    .line 63
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;->toJsonString()Ljava/lang/String;

    move-result-object p2

    .line 64
    invoke-static {p0, p2}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;->putLogEvents(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static updateWidgetCount(Landroid/content/Context;[I)V
    .locals 1

    const-string p1, "pservice_widget_ids"

    const/4 v0, 0x0

    .line 138
    invoke-static {p0, p1, v0}, Lo/aer;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 140
    invoke-static {p0, p1, v0}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
