.class public Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataRequest;
.super Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;
.source "FetchAccountDataRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest",
        "<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;",
        ">;"
    }
.end annotation


# static fields
.field private static final FIELD_PROFILES:Ljava/lang/String; = "profilesList"

.field private static final FIELD_USER:Ljava/lang/String; = "user"

.field public static final MAX_PROFILES:I = 0x5

.field private static final TAG:Ljava/lang/String; = "nf_service_user_fetchaccountdatarequest"


# instance fields
.field private final pqlQuery1:Ljava/lang/String;

.field private final pqlQuery2:Ljava/lang/String;

.field private final pqlQuery3:Ljava/lang/String;

.field private final responseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
    .locals 3

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;-><init>(Landroid/content/Context;)V

    .line 48
    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataRequest;->responseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[\'profilesList\', \'summary\']"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataRequest;->pqlQuery1:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[\'profilesList\', {\'to\':"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}, [\'summary\', \'subtitlePreference\']]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataRequest;->pqlQuery2:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[\'user\', [\'summary\', \'subtitleDefaults\', \'umaEog\', \'uma\']]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataRequest;->pqlQuery3:Ljava/lang/String;

    .line 54
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const-string/jumbo v0, "nf_service_user_fetchaccountdatarequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PQL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataRequest;->pqlQuery1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string/jumbo v0, "nf_service_user_fetchaccountdatarequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PQL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataRequest;->pqlQuery2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-string/jumbo v0, "nf_service_user_fetchaccountdatarequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PQL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataRequest;->pqlQuery3:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    return-void
.end method

.method private static getEogAlert(Lcom/google/gson/JsonObject;)Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;
    .locals 4

    .prologue
    .line 145
    const-string/jumbo v0, "umaEog"

    const-class v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getPropertyObject(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    .line 146
    if-eqz v0, :cond_1

    .line 147
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    const-string/jumbo v1, "nf_service_user_fetchaccountdatarequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "EOG loaded from server : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    :goto_0
    return-object v0

    .line 152
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    const-string/jumbo v0, "nf_service_user_fetchaccountdatarequest"

    const-string/jumbo v1, "No EOG loaded from server"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getUmaAlert(Lcom/google/gson/JsonObject;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;
    .locals 4

    .prologue
    .line 162
    const-string/jumbo v0, "uma"

    const-class v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getPropertyObject(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    .line 163
    if-eqz v0, :cond_1

    .line 164
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    const-string/jumbo v1, "nf_service_user_fetchaccountdatarequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UMA loaded from server : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    :goto_0
    return-object v0

    .line 169
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    const-string/jumbo v0, "nf_service_user_fetchaccountdatarequest"

    const-string/jumbo v1, "No UMA loaded from server"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseProfilesList(Ljava/lang/String;Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;
    .locals 9

    .prologue
    .line 72
    const-string/jumbo v0, "nf_service_user_fetchaccountdatarequest"

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getDataObj(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 73
    invoke-static {v3}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->isEmpty(Lcom/google/gson/JsonObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    const-string/jumbo v1, "UserProfiles empty!!!"

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    :try_start_0
    const-string/jumbo v0, "profilesList"

    invoke-virtual {v3, v0}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 86
    const/4 v0, 0x5

    .line 89
    const-string/jumbo v1, "summary"

    invoke-virtual {v4, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 90
    const-string/jumbo v0, "summary"

    const-class v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListSummary;

    invoke-static {v4, v0, v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getPropertyObject(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListSummary;

    .line 91
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListSummary;->getLength()I

    move-result v0

    move v1, v0

    .line 95
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 96
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-gt v2, v1, :cond_4

    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-virtual {v4, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 99
    invoke-virtual {v4, v0}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v6

    .line 101
    new-instance v7, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-direct {v7}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;-><init>()V

    .line 102
    const-string/jumbo v0, "summary"

    const-class v8, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    invoke-static {v6, v0, v8}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getPropertyObject(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    iput-object v0, v7, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    .line 104
    iget-object v0, v7, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-eqz v0, :cond_1

    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "response missing summary"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    const-string/jumbo v1, "nf_service_user_fetchaccountdatarequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "String response to parse = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v1, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    const-string/jumbo v2, "response missing user json objects"

    invoke-direct {v1, v2, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 108
    :cond_2
    const-string/jumbo v0, "subtitlePreference"

    const-class v8, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    invoke-static {v6, v0, v8}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getPropertyObject(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    iput-object v0, v7, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->subtitlePreference:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    .line 110
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    .line 114
    :cond_4
    new-instance v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;

    invoke-direct {v1, v5}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;-><init>(Ljava/util/List;)V

    .line 117
    if-eqz p1, :cond_7

    .line 118
    new-instance v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;-><init>()V

    .line 121
    :try_start_1
    const-string/jumbo v0, "user"

    invoke-virtual {v3, v0}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 127
    const-string/jumbo v0, "summary"

    const-class v4, Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;

    invoke-static {v3, v0, v4}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getPropertyObject(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;

    iput-object v0, v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;

    .line 128
    iget-object v0, v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->getUserToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 129
    :cond_5
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "response missing summary"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :catch_1
    move-exception v0

    .line 123
    const-string/jumbo v1, "nf_service_user_fetchaccountdatarequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "String response to parse = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v1, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    const-string/jumbo v2, "response missing user json objects"

    invoke-direct {v1, v2, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 131
    :cond_6
    const-string/jumbo v0, "subtitleDefaults"

    const-class v4, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    invoke-static {v3, v0, v4}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getPropertyObject(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    iput-object v0, v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->subtitleDefaults:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    .line 133
    invoke-static {v3}, Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataRequest;->getEogAlert(Lcom/google/gson/JsonObject;)Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v0

    iput-object v0, v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->eogAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    .line 134
    invoke-static {v3}, Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataRequest;->getUmaAlert(Lcom/google/gson/JsonObject;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->setUmaAlert(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V

    .line 136
    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;->setUser(Lcom/netflix/mediaclient/service/webclient/model/leafs/User;)V

    .line 139
    :cond_7
    return-object v1

    :cond_8
    move v1, v0

    goto/16 :goto_0
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
    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataRequest;->pqlQuery1:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataRequest;->pqlQuery2:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataRequest;->pqlQuery3:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataRequest;->responseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataRequest;->responseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;->onAccountDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 189
    :cond_0
    return-void
.end method

.method protected onSuccess(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;)V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataRequest;->responseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataRequest;->responseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;->onAccountDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 196
    :cond_0
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataRequest;->onSuccess(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;)V

    return-void
.end method

.method protected parseFalkorResponse(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;
    .locals 3

    .prologue
    .line 178
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const-string/jumbo v0, "nf_service_user_fetchaccountdatarequest"

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

    .line 181
    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataRequest;->parseProfilesList(Ljava/lang/String;Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataRequest;->parseFalkorResponse(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;

    move-result-object v0

    return-object v0
.end method

.method protected shouldSkipProcessingOnInvalidUser()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method
