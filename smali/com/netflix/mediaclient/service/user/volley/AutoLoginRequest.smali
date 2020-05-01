.class public Lcom/netflix/mediaclient/service/user/volley/AutoLoginRequest;
.super Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;
.source "AutoLoginRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest",
        "<",
        "Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_service_user_autologinrequest"


# instance fields
.field private mPqlQuery:Ljava/lang/String;

.field private mResponseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

.field private mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/netflix/mediaclient/service/user/volley/AutoLoginRequest;->mResponseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    if-nez p2, :cond_1

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/AutoLoginRequest;->mToken:Ljava/lang/String;

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[\'autoLogin\',\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/AutoLoginRequest;->mToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\']"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/AutoLoginRequest;->mPqlQuery:Ljava/lang/String;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_service_user_autologinrequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PQL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/volley/AutoLoginRequest;->mPqlQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/volley/AutoLoginRequest;->mToken:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected getMethodType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "get"

    return-object v0
.end method

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

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/volley/AutoLoginRequest;->mPqlQuery:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected isAuthorizationRequired()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/AutoLoginRequest;->mResponseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/AutoLoginRequest;->mResponseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;->onAutologinCompleted(Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method protected onSuccess(Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/AutoLoginRequest;->mResponseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/AutoLoginRequest;->mResponseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;->onAutologinCompleted(Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/volley/AutoLoginRequest;->onSuccess(Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;)V

    return-void
.end method

.method protected parseFalkorResponse(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_service_user_autologinrequest"

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

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "credentials"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "netflixId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "secureNetflixId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    const-string/jumbo v1, "Empty tokens!"

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "nf_service_user_autologinrequest"

    const-string/jumbo v2, "Failed"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_1
    new-instance v2, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;

    invoke-direct {v2, v1, v0}, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2
.end method

.method protected bridge synthetic parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/volley/AutoLoginRequest;->parseFalkorResponse(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;

    move-result-object v0

    return-object v0
.end method
