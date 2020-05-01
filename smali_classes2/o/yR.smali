.class public final Lo/yR;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;
    .locals 13

    const-string v0, "response missing user json objects"

    const-string v1, "String response to parse = "

    const-string v2, "nf_service_user"

    .line 41
    invoke-static {v2, p0}, Lo/Downloads;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 42
    invoke-static {v3}, Lo/adI;->d(Lcom/google/gson/JsonObject;)Z

    move-result v4

    if-nez v4, :cond_9

    :try_start_0
    const-string v4, "profilesListV2"

    .line 49
    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, "profilesList"

    .line 52
    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    const/4 v5, 0x5

    const-string v6, "summary"

    .line 62
    invoke-virtual {v4, v6}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 63
    const-class v5, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListSummary;

    invoke-static {v4, v6, v5}, Lo/adI;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListSummary;

    .line 64
    invoke-virtual {v5}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListSummary;->getLength()I

    move-result v5

    .line 68
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v5, :cond_5

    .line 70
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 71
    invoke-virtual {v4, v9}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 72
    invoke-virtual {v4, v9}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v9

    .line 74
    new-instance v10, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-direct {v10}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;-><init>()V

    .line 75
    const-class v11, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    invoke-static {v9, v6, v11}, Lo/adI;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    iput-object v11, v10, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    .line 77
    iget-object v11, v10, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-eqz v11, :cond_3

    invoke-virtual {v10}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_1

    .line 85
    :cond_2
    const-class v11, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    const-string v12, "subtitlePreference"

    invoke-static {v9, v12, v11}, Lo/adI;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    iput-object v9, v10, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->subtitlePreference:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    .line 87
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 81
    :cond_3
    :goto_1
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v9

    const-string v10, "UserUtils: Got empty summary for a profile."

    invoke-interface {v9, v10}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 92
    :cond_5
    new-instance v4, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;

    invoke-direct {v4, v7, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;-><init>(Ljava/util/List;Ljava/lang/String;)V

    if-eqz p1, :cond_8

    .line 95
    new-instance p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    invoke-direct {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;-><init>()V

    :try_start_1
    const-string v5, "user"

    .line 98
    invoke-virtual {v3, v5}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 104
    const-class v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;

    invoke-static {v0, v6, v1}, Lo/adI;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;

    iput-object v1, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;

    .line 105
    iget-object v1, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->getUserGuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 108
    const-class v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    const-string v2, "subtitleDefaults"

    invoke-static {v0, v2, v1}, Lo/adI;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    iput-object v1, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->subtitleDefaults:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    .line 109
    invoke-static {v0}, Lo/yR;->b(Lcom/google/gson/JsonObject;)Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v0

    iput-object v0, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->eogAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    .line 112
    :try_start_2
    sget-object v0, Lo/hm;->e:Lo/hm$StateListAnimator;

    invoke-virtual {v0}, Lo/hm$StateListAnimator;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 113
    invoke-static {p0}, Lo/yG;->c(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->setUmaAlert(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V

    goto :goto_3

    .line 115
    :cond_6
    invoke-static {p0}, Lo/yG;->e(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->setUmaAlert(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 118
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "UserUtils: Error parsing UMA"

    invoke-interface {v0, v1, p0}, Lo/SpinnerAdapter;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    :goto_3
    invoke-virtual {v4, p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;->setUser(Lcom/netflix/mediaclient/service/webclient/model/leafs/User;)V

    goto :goto_4

    .line 106
    :cond_7
    new-instance p1, Lcom/netflix/falkor/FalkorException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response missing summary"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/netflix/falkor/FalkorException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance p0, Lcom/netflix/falkor/FalkorException;

    invoke-direct {p0, v0, p1}, Lcom/netflix/falkor/FalkorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_8
    :goto_4
    return-object v4

    :catch_2
    move-exception p1

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance p0, Lcom/netflix/falkor/FalkorException;

    invoke-direct {p0, v0, p1}, Lcom/netflix/falkor/FalkorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    .line 43
    :cond_9
    new-instance p0, Lcom/netflix/falkor/FalkorException;

    const-string p1, "UserProfiles empty!!!"

    invoke-direct {p0, p1}, Lcom/netflix/falkor/FalkorException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Lcom/google/gson/JsonObject;)Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;
    .locals 2

    .line 129
    const-class v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    const-string v1, "umaEog"

    invoke-static {p0, v1, v0}, Lo/adI;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
