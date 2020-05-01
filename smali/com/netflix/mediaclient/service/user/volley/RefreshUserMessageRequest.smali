.class public Lcom/netflix/mediaclient/service/user/volley/RefreshUserMessageRequest;
.super Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;
.source "RefreshUserMessageRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest",
        "<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;",
        ">;"
    }
.end annotation


# static fields
.field private static final FIELD_USER:Ljava/lang/String; = "user"

.field private static final TAG:Ljava/lang/String; = "RefreshUserMessageRequest"


# instance fields
.field private final mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/User;)V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;-><init>(Landroid/content/Context;I)V

    .line 45
    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/volley/RefreshUserMessageRequest;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    .line 46
    return-void
.end method


# virtual methods
.method protected getPQLQueries()Ljava/util/List;
    .locals 1
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
    .line 50
    const-string/jumbo v0, "[\'user\', \'uma\']"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 91
    const-string/jumbo v0, "RefreshUserMessageRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UMA, failed to refresh : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method protected onSuccess(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V
    .locals 3

    .prologue
    .line 81
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string/jumbo v0, "RefreshUserMessageRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UMA refreshed from server : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/RefreshUserMessageRequest;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->setUmaAlert(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V

    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/RefreshUserMessageRequest;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "RefreshUserMessageRequest.ACTION_UMA_MESSAGE_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 86
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/volley/RefreshUserMessageRequest;->onSuccess(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V

    return-void
.end method

.method protected parseFalkorResponse(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;
    .locals 4

    .prologue
    .line 61
    const-string/jumbo v0, "RefreshUserMessageRequest"

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getDataObj(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->isEmpty(Lcom/google/gson/JsonObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0

    .line 68
    :cond_0
    :try_start_0
    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 75
    const-string/jumbo v1, "uma"

    const-class v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getPropertyObject(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    const-string/jumbo v1, "RefreshUserMessageRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "String response to parse = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_1
    new-instance v1, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    const-string/jumbo v2, "response missing user json objects"

    invoke-direct {v1, v2, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected bridge synthetic parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/volley/RefreshUserMessageRequest;->parseFalkorResponse(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v0

    return-object v0
.end method

.method protected parsedResponseCanBeNull()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method
