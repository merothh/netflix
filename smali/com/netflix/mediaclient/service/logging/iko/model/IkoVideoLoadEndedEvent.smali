.class public Lcom/netflix/mediaclient/service/logging/iko/model/IkoVideoLoadEndedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;
.source "IkoVideoLoadEndedEvent.java"


# static fields
.field protected static final CATEGORY:Ljava/lang/String; = "iko"

.field private static final DATA_FIELD_ERROR:Ljava/lang/String; = "error"

.field private static final DATA_FIELD_REASON:Ljava/lang/String; = "reason"

.field private static final DATA_FIELD_URL:Ljava/lang/String; = "url"

.field protected static final NAME:Ljava/lang/String; = "ikoVideoLoadEnded"


# instance fields
.field protected mCompletionReason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

.field protected mUIError:Lcom/netflix/mediaclient/service/logging/client/model/UIError;

.field private mVideoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;J)V

    iput-object p7, p0, Lcom/netflix/mediaclient/service/logging/iko/model/IkoVideoLoadEndedEvent;->mVideoUrl:Ljava/lang/String;

    iput-object p6, p0, Lcom/netflix/mediaclient/service/logging/iko/model/IkoVideoLoadEndedEvent;->mUIError:Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    iput-object p5, p0, Lcom/netflix/mediaclient/service/logging/iko/model/IkoVideoLoadEndedEvent;->mCompletionReason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const-string/jumbo v0, "iko"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/iko/model/IkoVideoLoadEndedEvent;->category:Ljava/lang/String;

    const-string/jumbo v0, "ikoVideoLoadEnded"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/iko/model/IkoVideoLoadEndedEvent;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 3

    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/iko/model/IkoVideoLoadEndedEvent;->mCompletionReason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "reason"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/iko/model/IkoVideoLoadEndedEvent;->mCompletionReason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/iko/model/IkoVideoLoadEndedEvent;->mUIError:Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "error"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/iko/model/IkoVideoLoadEndedEvent;->mUIError:Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/iko/model/IkoVideoLoadEndedEvent;->mVideoUrl:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/iko/model/IkoVideoLoadEndedEvent;->mVideoUrl:Ljava/lang/String;

    :goto_0
    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0

    :cond_3
    const-string/jumbo v1, "unknown"

    goto :goto_0
.end method
