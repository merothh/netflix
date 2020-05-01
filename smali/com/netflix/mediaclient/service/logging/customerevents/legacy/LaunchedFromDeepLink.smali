.class public Lcom/netflix/mediaclient/service/logging/customerevents/legacy/LaunchedFromDeepLink;
.super Lcom/netflix/mediaclient/service/logging/customerevents/legacy/BaseCustomerEvent;
.source "LaunchedFromDeepLink.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DATA_ACTION:Ljava/lang/String; = "action"

.field private static final DATA_SOURCE:Ljava/lang/String; = "source"

.field private static final NAME:Ljava/lang/String; = "Mobile UI Launched from Deeplink"


# instance fields
.field private mAction:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDeeplinkParams:Ljava/lang/String;

.field private mSource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/logging/UserData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/BaseCustomerEvent;-><init>(Lcom/netflix/mediaclient/service/logging/UserData;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/LaunchedFromDeepLink;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/LaunchedFromDeepLink;->mSource:Ljava/lang/String;

    iput-object p5, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/LaunchedFromDeepLink;->mDeeplinkParams:Ljava/lang/String;

    return-void
.end method

.method private getEvents(Ljava/lang/String;Lcom/netflix/mediaclient/webapi/CommonRequestParameters;Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 9

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string/jumbo v0, "EventName"

    const-string/jumbo v1, "Mobile UI Launched from Deeplink"

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "EventTime"

    invoke-virtual {v8, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "Esn"

    invoke-virtual {v8, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/LaunchedFromDeepLink;->getEvent(Ljava/lang/String;Lcom/netflix/mediaclient/webapi/CommonRequestParameters;Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;JLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "data"

    invoke-virtual {v8, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "source"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/LaunchedFromDeepLink;->mSource:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/LaunchedFromDeepLink;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "action"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/LaunchedFromDeepLink;->mAction:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/LaunchedFromDeepLink;->addIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/LaunchedFromDeepLink;->mUser:Lcom/netflix/mediaclient/service/logging/UserData;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/logging/UserData;->netflixId:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/LaunchedFromDeepLink;->mUser:Lcom/netflix/mediaclient/service/logging/UserData;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/logging/UserData;->secureNetflixId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/LaunchedFromDeepLink;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/LaunchedFromDeepLink;->getCommonRequestParameters(Landroid/content/Context;)Lcom/netflix/mediaclient/webapi/CommonRequestParameters;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/LaunchedFromDeepLink;->mUser:Lcom/netflix/mediaclient/service/logging/UserData;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/logging/UserData;->esn:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/LaunchedFromDeepLink;->mDeeplinkParams:Ljava/lang/String;

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/LaunchedFromDeepLink;->getEvents(Ljava/lang/String;Lcom/netflix/mediaclient/webapi/CommonRequestParameters;Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/CustomerEventCommand;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/LaunchedFromDeepLink;->mUser:Lcom/netflix/mediaclient/service/logging/UserData;

    iget-object v3, v3, Lcom/netflix/mediaclient/service/logging/UserData;->esn:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v0, v1}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/CustomerEventCommand;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;Ljava/lang/String;)V

    const-string/jumbo v0, "nf_rest"

    const-string/jumbo v1, "Executing LaunchedFromDeepLink WebAPI call start"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/CustomerEventCommand;->execute()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "nf_rest"

    const-string/jumbo v2, "Executing LaunchedFromDeepLink WebAPI call done"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_rest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "LaunchedFromDeepLink response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "nf_rest"

    const-string/jumbo v2, "Failed to execute LaunchedFromDeepLink call!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
