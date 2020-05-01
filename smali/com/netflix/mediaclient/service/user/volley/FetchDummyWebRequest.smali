.class public Lcom/netflix/mediaclient/service/user/volley/FetchDummyWebRequest;
.super Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;
.source "FetchDummyWebRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_service_user_fetchdummywebrequest"


# instance fields
.field private final pqlQuery:Ljava/lang/String;

.field private final responseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/volley/FetchDummyWebRequest;->responseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[\'dummy\']"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/FetchDummyWebRequest;->pqlQuery:Ljava/lang/String;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_service_user_fetchdummywebrequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PQL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/volley/FetchDummyWebRequest;->pqlQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

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

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/volley/FetchDummyWebRequest;->pqlQuery:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/FetchDummyWebRequest;->responseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/FetchDummyWebRequest;->responseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;->onDummyWebCallDone(Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/volley/FetchDummyWebRequest;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/FetchDummyWebRequest;->responseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/FetchDummyWebRequest;->responseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;->onDummyWebCallDone(Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/volley/FetchDummyWebRequest;->parseFalkorResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected parseFalkorResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->OK:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected shouldSkipProcessingOnInvalidUser()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
