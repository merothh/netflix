.class public Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedbackCommand;
.super Lcom/netflix/mediaclient/webapi/ResponseWebApiPostCommand;
.source "NotificationFeedbackCommand.java"


# static fields
.field protected static final PATH:Ljava/lang/String; = "/log"


# instance fields
.field private mPayload:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;Lcom/netflix/mediaclient/webapi/CommonRequestParameters;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/webapi/ResponseWebApiPostCommand;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;Lcom/netflix/mediaclient/webapi/CommonRequestParameters;)V

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedbackCommand;->mPayload:Ljava/lang/String;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_rest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Payload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedbackCommand;->mPayload:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public getCommandPath()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "/log"

    return-object v0
.end method

.method protected getEntity()Lorg/apache/http/HttpEntity;
    .locals 3

    new-instance v0, Lorg/apache/http/entity/StringEntity;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedbackCommand;->mPayload:Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getHeaders()[Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/util/Pair;

    const/4 v1, 0x0

    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "X-Netflix.ichnaea.request.type"

    const-string/jumbo v4, "CMPMessageFeedbackRequest"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "Content-Type"

    const-string/jumbo v4, "application/json"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected getUrl()Ljava/lang/StringBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedbackCommand;->getBaseCmsBeaconUrl()Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method
