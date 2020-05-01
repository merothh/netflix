.class public Lcom/netflix/mediaclient/service/user/volley/FetchUserDataRequest;
.super Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;
.source "FetchUserDataRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest",
        "<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/User;",
        ">;"
    }
.end annotation


# static fields
.field private static final FIELD_USER:Ljava/lang/String; = "user"

.field private static final TAG:Ljava/lang/String; = "nf_service_user_fetchuserdatarequest"


# instance fields
.field private final pqlQuery1:Ljava/lang/String;

.field private final responseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
    .locals 3

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/volley/FetchUserDataRequest;->responseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    .line 32
    const-string/jumbo v0, "[\'user\', [\'summary\', \'subtitleDefaults\']]"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/FetchUserDataRequest;->pqlQuery1:Ljava/lang/String;

    .line 34
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const-string/jumbo v0, "nf_service_user_fetchuserdatarequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PQL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/volley/FetchUserDataRequest;->pqlQuery1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    return-void
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
    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/volley/FetchUserDataRequest;->pqlQuery1:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/FetchUserDataRequest;->responseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/FetchUserDataRequest;->responseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;->onUserDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/User;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 82
    :cond_0
    return-void
.end method

.method protected onSuccess(Lcom/netflix/mediaclient/service/webclient/model/leafs/User;)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/FetchUserDataRequest;->responseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/FetchUserDataRequest;->responseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;->onUserDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/User;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 89
    :cond_0
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/volley/FetchUserDataRequest;->onSuccess(Lcom/netflix/mediaclient/service/webclient/model/leafs/User;)V

    return-void
.end method

.method protected parseFalkorResponse(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/User;
    .locals 4

    .prologue
    .line 51
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const-string/jumbo v0, "nf_service_user_fetchuserdatarequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "String response to parse = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    const-string/jumbo v0, "nf_service_user_fetchuserdatarequest"

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getDataObj(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->isEmpty(Lcom/google/gson/JsonObject;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    const-string/jumbo v1, "UserProfile empty!!!"

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    new-instance v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;-><init>()V

    .line 62
    :try_start_0
    const-string/jumbo v2, "user"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 68
    const-string/jumbo v0, "summary"

    const-class v3, Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;

    invoke-static {v2, v0, v3}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getPropertyObject(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;

    iput-object v0, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;

    .line 69
    iget-object v0, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->getUserToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    :cond_2
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "response missing summary"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    const-string/jumbo v1, "nf_service_user_fetchuserdatarequest"

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

    .line 65
    new-instance v1, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    const-string/jumbo v2, "response missing user json objects"

    invoke-direct {v1, v2, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 72
    :cond_3
    const-string/jumbo v0, "subtitleDefaults"

    const-class v3, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    invoke-static {v2, v0, v3}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getPropertyObject(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    iput-object v0, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->subtitleDefaults:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    .line 74
    return-object v1
.end method

.method protected bridge synthetic parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/volley/FetchUserDataRequest;->parseFalkorResponse(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    move-result-object v0

    return-object v0
.end method

.method protected shouldSkipProcessingOnInvalidUser()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method
