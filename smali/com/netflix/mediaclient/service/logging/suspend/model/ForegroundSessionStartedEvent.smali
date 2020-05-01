.class public Lcom/netflix/mediaclient/service/logging/suspend/model/ForegroundSessionStartedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;
.source "ForegroundSessionStartedEvent.java"


# static fields
.field private static final APP_TRIGGER:Ljava/lang/String; = "appTrigger"

.field private static final PAYLOAD:Ljava/lang/String; = "sourceTypePayload"

.field private static final SESSION_NAME:Ljava/lang/String; = "foreground"

.field private static final TAG:Ljava/lang/String; = "nf_log"

.field private static final TRIGGER:Ljava/lang/String; = "trigger"


# instance fields
.field private mAppTrigger:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;

.field private mDeepLink:Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;)V
    .locals 1

    const-string/jumbo v0, "foreground"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/suspend/model/ForegroundSessionStartedEvent;->mAppTrigger:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/suspend/model/ForegroundSessionStartedEvent;->mDeepLink:Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;

    return-void
.end method

.method private static toTrigger(Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;)Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;
    .locals 4

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toTrigger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Deeplink or source type empty, go for default."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;->dedicatedOnScreenIcon:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;->lookup(I)Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "nf_log"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Source type not found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Go for default."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;->dedicatedOnScreenIcon:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "Failed to extract source type, go for default"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;->dedicatedOnScreenIcon:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;

    goto :goto_0
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 3

    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/suspend/model/ForegroundSessionStartedEvent;->mAppTrigger:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "appTrigger"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/suspend/model/ForegroundSessionStartedEvent;->mAppTrigger:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;->getSourceType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/suspend/model/ForegroundSessionStartedEvent;->mDeepLink:Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;

    if-eqz v1, :cond_3

    const-string/jumbo v1, "trigger"

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;->externalApp:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;->getSourceType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/suspend/model/ForegroundSessionStartedEvent;->mDeepLink:Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;->getDeeplinkParams()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "sourceTypePayload"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/suspend/model/ForegroundSessionStartedEvent;->mDeepLink:Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;->getDeeplinkParams()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    const-string/jumbo v1, "appTrigger"

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;->dedicatedOnScreenIcon:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;->getSourceType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "trigger"

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;->dedicatedOnScreenIcon:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;->getSourceType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1
.end method
