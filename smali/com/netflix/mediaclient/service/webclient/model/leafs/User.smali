.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/User;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/user/User;


# static fields
.field private static final FIELD_AGE_VERIFIED:Ljava/lang/String; = "ageVerified"

.field private static final FIELD_EMAIL:Ljava/lang/String; = "email"

.field private static final FIELD_FIRST_NAME:Ljava/lang/String; = "firstName"

.field private static final FIELD_LAST_NAME:Ljava/lang/String; = "lastName"

.field private static final FIELD_USER_TOKEN:Ljava/lang/String; = "userId"

.field private static final TAG:Ljava/lang/String; = "User"


# instance fields
.field public eogAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

.field public subtitleDefaults:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

.field public summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;

.field private umaAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;-><init>(Lcom/netflix/mediaclient/service/webclient/model/leafs/User;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;-><init>(Lcom/netflix/mediaclient/service/webclient/model/leafs/User;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;

    :try_start_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v0

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;

    const-string/jumbo v3, "userId"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;->access$302(Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;

    const-string/jumbo v3, "email"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;->access$002(Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;

    const-string/jumbo v3, "firstName"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;->access$102(Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;

    const-string/jumbo v3, "lastName"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;->access$202(Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;

    const-string/jumbo v3, "ageVerified"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/util/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;->access$402(Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;Z)Z

    const-string/jumbo v0, "subtitleOverride"

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->subtitleDefaults:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    const-string/jumbo v0, "umaAlert"

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :try_start_1
    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->umaAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "User"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UMA loaded from disk : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->umaAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_3
    :try_start_2
    const-string/jumbo v0, "eogAlert"

    const/4 v4, 0x0

    invoke-static {v2, v0, v4}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    :try_start_3
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->eogAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "User"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "EOG loaded from disk : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->umaAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_5
    return-void

    :cond_2
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    goto/16 :goto_0

    :cond_3
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    invoke-direct {v0, v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "User"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed to create json string="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " exception ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_4
    :try_start_5
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v4, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;
    :try_end_5
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    :try_start_6
    const-string/jumbo v4, "User"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed to parse uma="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " exception ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_3

    :cond_5
    :try_start_7
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;
    :try_end_7
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_4

    :catch_2
    move-exception v0

    :try_start_8
    const-string/jumbo v1, "User"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "failed to parse uma="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " exception ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_5
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;->access$000(Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;->access$100(Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;->access$200(Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSubtitleDefaults()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->subtitleDefaults:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    return-object v0
.end method

.method public getUmaAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->umaAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    return-object v0
.end method

.method public getUserToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;->access$300(Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isAgeVerified()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;->access$400(Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;)Z

    move-result v0

    goto :goto_0
.end method

.method public setUmaAlert(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->umaAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "userId"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->getUserToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "email"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "firstName"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "lastName"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "ageVerified"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->isAgeVerified()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->subtitleDefaults:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "subtitleOverride"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->subtitleDefaults:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->umaAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->umaAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->isConsumed()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "umaAlert"

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->umaAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "User"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UMA saved from disk : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->umaAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->eogAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->eogAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->isDirty:Z

    if-nez v0, :cond_2

    const-string/jumbo v0, "eogAlert"

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->eogAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "User"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "EOG saved from disk : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->eogAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    const-string/jumbo v0, "User"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user string="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "User"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "failed in json string "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
