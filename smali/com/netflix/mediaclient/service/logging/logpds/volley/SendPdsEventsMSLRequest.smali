.class public Lcom/netflix/mediaclient/service/logging/logpds/volley/SendPdsEventsMSLRequest;
.super Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;
.source "SendPdsEventsMSLRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_msl_volley_SendPdsBundle"

.field private static final pqlQuery1:Ljava/lang/String; = "[\'pdsEventBundle\']"


# instance fields
.field private final mPdsBundle:Lorg/json/JSONObject;

.field private final responseCallback:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventsSentCallback;


# direct methods
.method public constructor <init>([Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventsSentCallback;)V
    .locals 6

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;-><init>()V

    .line 33
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 35
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 36
    array-length v3, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p1, v0

    .line 37
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_0
    const-string/jumbo v0, "pdsBundle"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_1
    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/logpds/volley/SendPdsEventsMSLRequest;->mPdsBundle:Lorg/json/JSONObject;

    .line 46
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/logpds/volley/SendPdsEventsMSLRequest;->responseCallback:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventsSentCallback;

    .line 47
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    const-string/jumbo v0, "nf_msl_volley_SendPdsBundle"

    const-string/jumbo v2, "error in creating json array"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method protected getPQLQueries()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[\'pdsEventBundle\']"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    invoke-super {p0}, Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;->getParams()Ljava/util/Map;

    move-result-object v0

    .line 53
    const-string/jumbo v1, "bladerunnerParams"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/logpds/volley/SendPdsEventsMSLRequest;->mPdsBundle:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-object v0
.end method

.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logpds/volley/SendPdsEventsMSLRequest;->responseCallback:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventsSentCallback;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logpds/volley/SendPdsEventsMSLRequest;->responseCallback:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventsSentCallback;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventsSentCallback;->onPdsEventsSent(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    const-string/jumbo v0, "nf_msl_volley_SendPdsBundle"

    const-string/jumbo v1, "callback null?"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/logging/logpds/volley/SendPdsEventsMSLRequest;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logpds/volley/SendPdsEventsMSLRequest;->responseCallback:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventsSentCallback;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logpds/volley/SendPdsEventsMSLRequest;->responseCallback:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventsSentCallback;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventsSentCallback;->onPdsEventsSent(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    const-string/jumbo v0, "nf_msl_volley_SendPdsBundle"

    const-string/jumbo v1, "callback null?"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/logging/logpds/volley/SendPdsEventsMSLRequest;->parseFalkorResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected parseFalkorResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 65
    return-object p1
.end method
