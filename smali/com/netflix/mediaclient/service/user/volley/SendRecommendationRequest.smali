.class public Lcom/netflix/mediaclient/service/user/volley/SendRecommendationRequest;
.super Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;
.source "SendRecommendationRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest",
        "<",
        "Ljava/util/Set",
        "<",
        "Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final FRIEND_VIDEOS_FIELD:Ljava/lang/String; = "friendVideos"

.field public static final PAGE_FRIENDS_SIZE:I = 0x14

.field private static final RECOMMEND_FIELD:Ljava/lang/String; = "recommend"

.field private static final TAG:Ljava/lang/String; = "nf_service_user_fetchfriendsforrecommendationrequest"

.field private static final WAS_RECOMMENDED_FIELD:Ljava/lang/String; = "wasRecommended"


# instance fields
.field private final mBodyText:Ljava/lang/String;

.field private final mFriends:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;",
            ">;"
        }
    .end annotation
.end field

.field private final mGUID:Ljava/lang/String;

.field private final mVideoId:Ljava/lang/String;

.field private final pqlQuery:Ljava/lang/String;

.field private final responseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;-><init>(Landroid/content/Context;)V

    iput-object p6, p0, Lcom/netflix/mediaclient/service/user/volley/SendRecommendationRequest;->responseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/volley/SendRecommendationRequest;->mVideoId:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/user/volley/SendRecommendationRequest;->mFriends:Ljava/util/Set;

    if-nez p4, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/SendRecommendationRequest;->mBodyText:Ljava/lang/String;

    iput-object p5, p0, Lcom/netflix/mediaclient/service/user/volley/SendRecommendationRequest;->mGUID:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "["

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;

    if-lez v1, :cond_0

    const-string/jumbo v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string/jumbo v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;->getFriendProfile()Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-static {p4}, Lcom/netflix/mediaclient/util/StringUtils;->escapeJsonChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "friendVideos"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\', \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "recommend"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\']"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/SendRecommendationRequest;->pqlQuery:Ljava/lang/String;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "nf_service_user_fetchfriendsforrecommendationrequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PQL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/volley/SendRecommendationRequest;->pqlQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method


# virtual methods
.method protected getMethodType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "call"

    return-object v0
.end method

.method protected getOptionalParams()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "param"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/user/volley/SendRecommendationRequest;->mBodyText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/user/volley/SendRecommendationRequest;->urlEncodPQLParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "&param="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/volley/SendRecommendationRequest;->mGUID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/volley/SendRecommendationRequest;->pqlQuery:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/SendRecommendationRequest;->responseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/SendRecommendationRequest;->responseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;->onRecommendationsSent(Ljava/util/Set;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/volley/SendRecommendationRequest;->onSuccess(Ljava/util/Set;)V

    return-void
.end method

.method protected onSuccess(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/SendRecommendationRequest;->responseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/SendRecommendationRequest;->responseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;->onRecommendationsSent(Ljava/util/Set;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/volley/SendRecommendationRequest;->parseFalkorResponse(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected parseFalkorResponse(Ljava/lang/String;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_service_user_fetchfriendsforrecommendationrequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Got result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "nf_service_user_fetchfriendsforrecommendationrequest"

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getDataObj(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->isEmpty(Lcom/google/gson/JsonObject;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    const-string/jumbo v1, "UserProfiles empty!!!"

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    const-string/jumbo v1, "friendVideos"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_3

    const-string/jumbo v0, "nf_service_user_fetchfriendsforrecommendationrequest"

    const-string/jumbo v1, "While parsing the response got null friendsListObj"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/SendRecommendationRequest;->mFriends:Ljava/util/Set;

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "nf_service_user_fetchfriendsforrecommendationrequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "While getting recommendations field from the response got an exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v1, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    const-string/jumbo v2, "response missing friends json objects"

    invoke-direct {v1, v2, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/SendRecommendationRequest;->mFriends:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;->getFriendProfile()Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/user/volley/SendRecommendationRequest;->mVideoId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/netflix/mediaclient/service/user/volley/SendRecommendationRequest;->mVideoId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v3

    const-string/jumbo v4, "wasRecommended"

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;->setWasRecommended(Z)V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "nf_service_user_fetchfriendsforrecommendationrequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Wierd profileObj: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " without videoId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/user/volley/SendRecommendationRequest;->mVideoId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " field..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/SendRecommendationRequest;->mFriends:Ljava/util/Set;

    goto/16 :goto_0
.end method

.method protected shouldSkipProcessingOnInvalidUser()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
