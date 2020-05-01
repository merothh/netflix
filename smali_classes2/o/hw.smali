.class public final Lo/hw;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String;

.field static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/String;

.field public static final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "deviceConfig"

    aput-object v3, v1, v2

    const-string v3, "[\"%s\"]"

    .line 68
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lo/hw;->a:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v4, "accountConfig"

    aput-object v4, v1, v2

    .line 69
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lo/hw;->d:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v4, "ftlConfig"

    aput-object v4, v1, v2

    .line 70
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lo/hw;->e:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v4, "castKey"

    aput-object v4, v1, v2

    .line 71
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lo/hw;->c:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v4, "nrmInfo"

    aput-object v4, v1, v2

    .line 72
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lo/hw;->b:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v4, "nrmLanguages"

    aput-object v4, v1, v2

    .line 73
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lo/hw;->f:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v4, "signInConfig"

    aput-object v4, v1, v2

    .line 74
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lo/hw;->j:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v4, "fpConfig"

    aput-object v4, v1, v2

    .line 75
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lo/hw;->i:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v4, "refreshSignInConfig"

    aput-object v4, v1, v2

    .line 76
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lo/hw;->g:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "customerSupportVoipConfigData"

    aput-object v1, v0, v2

    .line 77
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/hw;->h:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;
    .locals 3

    .line 83
    new-instance p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;-><init>()V

    const-string v0, "nf_config_data"

    .line 89
    invoke-static {v0, p1}, Lo/Downloads;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 90
    invoke-static {v1}, Lo/adI;->d(Lcom/google/gson/JsonObject;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string p1, "deviceConfig"

    .line 98
    invoke-virtual {v1, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    sget-object v0, Lo/mS;->d:Lo/mS;

    invoke-static {v1, p1}, Lo/Downloads;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/mS;->b(Ljava/lang/String;)Lo/mR;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0}, Lo/mR;->c()Z

    .line 105
    :cond_0
    const-class v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-static {v1, p1, v0}, Lo/adI;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->deviceConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    :cond_1
    const-string p1, "accountConfig"

    .line 109
    invoke-virtual {v1, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    const-class v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    invoke-static {v1, p1, v0}, Lo/adI;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->accountConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    :cond_2
    const-string p1, "abTestConfig"

    .line 114
    invoke-virtual {v1, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v1, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->abTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    new-instance p0, Lcom/netflix/falkor/FalkorException;

    const-string p1, "unable to parse ABTestConfigData"

    invoke-direct {p0, p1}, Lcom/netflix/falkor/FalkorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    const-string p1, "castKey"

    .line 124
    invoke-virtual {v1, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 125
    const-class v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;

    invoke-static {v1, p1, v0}, Lo/adI;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->castKeyData:Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;

    :cond_4
    const-string p1, "ftlConfig"

    .line 129
    invoke-virtual {v1, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 130
    const-class v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;

    invoke-static {v1, p1, v0}, Lo/adI;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->ftlConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;

    :cond_5
    const-string p1, "streamingConfig"

    .line 133
    invoke-virtual {v1, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 134
    invoke-virtual {v1, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 136
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->streamingConfigJson:Ljava/lang/String;

    :cond_6
    const-string p1, "fpConfig"

    .line 140
    invoke-virtual {v1, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 141
    invoke-virtual {v1, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 143
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->fpConfigJson:Ljava/lang/String;

    :cond_7
    const-string p1, "nrmInfo"

    .line 148
    invoke-virtual {v1, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 149
    const-class v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    invoke-static {v1, p1, v0}, Lo/adI;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->nrmInfo:Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    :cond_8
    const-string p1, "nrmLanguages"

    .line 153
    invoke-virtual {v1, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 154
    const-class v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmLanguagesData;

    invoke-static {v1, p1, v0}, Lo/adI;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmLanguagesData;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->nrmLang:Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmLanguagesData;

    :cond_9
    const-string p1, "signInConfig"

    .line 158
    invoke-virtual {v1, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 159
    const-class v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    invoke-static {v1, p1, v0}, Lo/adI;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->signInConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    :cond_a
    return-object p0

    :cond_b
    const-string p0, "Empty response for configuration request!"

    .line 91
    invoke-static {v0, p0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance p0, Lcom/netflix/falkor/FalkorException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Empty response for configuration request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netflix/falkor/FalkorException;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    invoke-interface {p1, p0}, Lo/SpinnerAdapter;->b(Ljava/lang/Throwable;)V

    .line 94
    throw p0
.end method

.method public static a(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;
    .locals 5

    .line 198
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;-><init>()V

    const-string v1, "nf_config_data"

    .line 204
    invoke-static {v1, p0}, Lo/Downloads;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 205
    invoke-static {v2}, Lo/adI;->d(Lcom/google/gson/JsonObject;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string p0, "customerSupportVoipConfigData"

    .line 213
    invoke-virtual {v2, p0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 214
    invoke-virtual {v2, p0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    aput-object v4, v0, v3

    const-string v3, "Customer Support VOIP config json: %s"

    invoke-static {v1, v3, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 215
    const-class v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    invoke-static {v2, p0, v0}, Lo/adI;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    :cond_0
    return-object v0

    :cond_1
    const-string v0, "Empty response for voip configuration request!"

    .line 206
    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v0, Lcom/netflix/falkor/FalkorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Empty response for voip configuration request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/netflix/falkor/FalkorException;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p0

    invoke-interface {p0, v0}, Lo/SpinnerAdapter;->b(Ljava/lang/Throwable;)V

    .line 209
    throw v0
.end method

.method public static b(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 191
    sget-object v0, Lo/hw;->g:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lo/hw;->j:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    sget-object v0, Lo/hw;->g:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public static c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 223
    sget-object v1, Lo/hw;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 167
    sget-object v0, Lo/hw;->d:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    sget-object v0, Lo/hw;->d:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_0
    sget-object v0, Lo/hw;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    sget-object v0, Lo/hw;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_1
    sget-object v0, Lo/hw;->e:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 174
    sget-object v0, Lo/hw;->e:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "abTestConfig"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "streamingConfig2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 176
    invoke-static {p0}, Lo/hw;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "[[\'%s\', \'%s\'], \'%s\']"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 234
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 237
    invoke-static {}, Lo/aek;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 238
    invoke-static {}, Lo/cS;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/fC;

    .line 240
    invoke-static {}, Lo/adq;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lo/fC;->c()Z

    move-result v2

    if-nez v2, :cond_0

    .line 241
    :cond_1
    invoke-static {}, Lo/adq;->d()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lo/fC;->q()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 244
    :cond_2
    invoke-virtual {v1}, Lo/fC;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 247
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {p0}, Lo/aev;->c([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 181
    sget-object v0, Lo/hw;->a:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    sget-object v0, Lo/hw;->a:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_0
    sget-object v0, Lo/hw;->i:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    sget-object v0, Lo/hw;->i:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method
