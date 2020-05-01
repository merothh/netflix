.class public Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataRequest;
.super Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;
.source "FetchConfigDataRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest",
        "<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;",
        ">;"
    }
.end annotation


# static fields
.field private static final AB_TEST_CONFIG:Ljava/lang/String; = "abTestConfig"

.field private static final ACCOUNT_CONFIG:Ljava/lang/String; = "accountConfig"

.field private static final CAST_KEY_CONFIG:Ljava/lang/String; = "castKey"

.field private static final CUSTOMER_SUPPORT_VOIP_AUTHORIZATIONS:Ljava/lang/String; = "customerSupportVoipAuthorizations"

.field private static final DEVICE_CONFIG:Ljava/lang/String; = "deviceConfig"

.field private static final NRM_INFO:Ljava/lang/String; = "nrmInfo"

.field private static final SIGNIN_CONFIG:Ljava/lang/String; = "signInConfig"

.field private static final STREAMING_CONFIG:Ljava/lang/String; = "streamingqoe"

.field private static final STREAMING_CONFIG_DEFAULT:Ljava/lang/String; = "streamingqoeDefault"

.field private static final TAG:Ljava/lang/String; = "nf_config_data"

.field private static final accountConfigPql:Ljava/lang/String;

.field public static final castKeyPql:Ljava/lang/String;

.field public static final customerSupportVoipPql:Ljava/lang/String;

.field public static final deviceConfigPql:Ljava/lang/String;

.field public static final nrmInfoPql:Ljava/lang/String;

.field public static final signInConfigPql:Ljava/lang/String;

.field private static final streamingQoePql:Ljava/lang/String;

.field public static final streamingQoePqlDefault:Ljava/lang/String;


# instance fields
.field private abTestConfigPql:Ljava/lang/String;

.field private final responseCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    const-string/jumbo v0, "[\'%s\']"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "nrmInfo"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataRequest;->nrmInfoPql:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, "[\'%s\']"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "signInConfig"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataRequest;->signInConfigPql:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "[\'%s\']"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "deviceConfig"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataRequest;->deviceConfigPql:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "[\'%s\']"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "accountConfig"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataRequest;->accountConfigPql:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "[\'%s\']"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "streamingqoe"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataRequest;->streamingQoePql:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "[\'%s\']"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "streamingqoeDefault"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataRequest;->streamingQoePqlDefault:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "[\'%s\']"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "customerSupportVoipAuthorizations"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataRequest;->customerSupportVoipPql:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "[\'%s\']"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "castKey"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataRequest;->castKeyPql:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V
    .locals 4

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;-><init>(Landroid/content/Context;)V

    .line 54
    iput-object p2, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataRequest;->responseCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    .line 55
    const-string/jumbo v0, "[\'%s\', \'%s\']"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "abTestConfig"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getABTestIds(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataRequest;->abTestConfigPql:Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const-string/jumbo v0, "nf_config_data"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deviceConfigPql = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataRequest;->deviceConfigPql:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const-string/jumbo v0, "nf_config_data"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "accountConfigPql = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataRequest;->accountConfigPql:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string/jumbo v0, "nf_config_data"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "abTestConfigPql = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataRequest;->abTestConfigPql:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string/jumbo v0, "nf_config_data"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "steamingqoePql = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataRequest;->streamingQoePql:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string/jumbo v0, "nf_config_data"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "customerSupportVoipPql = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataRequest;->customerSupportVoipPql:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string/jumbo v0, "nf_config_data"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "castKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataRequest;->castKeyPql:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    return-void
.end method

.method public static parseConfigString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;
    .locals 5

    .prologue
    .line 85
    new-instance v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;-><init>()V

    .line 87
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const-string/jumbo v0, "nf_config_data"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "String response to parse = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    const-string/jumbo v0, "nf_config_data"

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getDataObj(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 92
    invoke-static {v2}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->isEmpty(Lcom/google/gson/JsonObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    const-string/jumbo v0, "nf_config_data"

    const-string/jumbo v2, "No config overrides for device"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;-><init>()V

    iput-object v0, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->deviceConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    move-object v0, v1

    .line 191
    :goto_0
    return-object v0

    .line 99
    :cond_1
    const-string/jumbo v0, "deviceConfig"

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    const-string/jumbo v0, "deviceConfig"

    const-class v3, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-static {v2, v0, v3}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getPropertyObject(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    iput-object v0, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->deviceConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    .line 104
    :cond_2
    const-string/jumbo v0, "accountConfig"

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 105
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    const-string/jumbo v0, "nf_config_data"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Accnt config json: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "accountConfig"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_3
    const-string/jumbo v0, "accountConfig"

    const-class v3, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    invoke-static {v2, v0, v3}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getPropertyObject(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    iput-object v0, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->accountConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    .line 111
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 112
    const-string/jumbo v3, "nf_config_data"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Parsed accnt config: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->accountConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-nez v0, :cond_11

    const-string/jumbo v0, "null"

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_4
    const-string/jumbo v0, "abTestConfig"

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 118
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 119
    const-string/jumbo v0, "nf_config_data"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AB Test config json: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "abTestConfig"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_5
    const-string/jumbo v0, "abTestConfig"

    const-class v3, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-static {v2, v0, v3}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getPropertyObject(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    iput-object v0, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->abTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    .line 124
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 125
    const-string/jumbo v3, "nf_config_data"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Parsed AB Test config: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->abTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    if-nez v0, :cond_12

    const-string/jumbo v0, "null"

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_6
    const-string/jumbo v0, "castKey"

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 130
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 131
    const-string/jumbo v0, "nf_config_data"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cast config json: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "castKey"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_7
    const-string/jumbo v0, "castKey"

    const-class v3, Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;

    invoke-static {v2, v0, v3}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getPropertyObject(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;

    iput-object v0, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->castKeyData:Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;

    .line 136
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 137
    const-string/jumbo v3, "nf_config_data"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Parsed cast key config: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->castKeyData:Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;

    if-nez v0, :cond_13

    const-string/jumbo v0, "null"

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_8
    const-string/jumbo v0, "streamingqoe"

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 143
    const-string/jumbo v0, "streamingqoe"

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_9

    .line 145
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->streamingqoeJson:Ljava/lang/String;

    .line 149
    :cond_9
    const-string/jumbo v0, "streamingqoeDefault"

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 150
    const-string/jumbo v0, "streamingqoeDefault"

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_a

    .line 152
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->streamingqoeJson:Ljava/lang/String;

    .line 157
    :cond_a
    const-string/jumbo v0, "nrmInfo"

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 158
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 159
    const-string/jumbo v0, "nf_config_data"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "NRM config json: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "nrmInfo"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_b
    const-string/jumbo v0, "nrmInfo"

    const-class v3, Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;

    invoke-static {v2, v0, v3}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getPropertyObject(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;

    iput-object v0, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->nrmInfo:Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;

    .line 162
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 163
    const-string/jumbo v3, "nf_config_data"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Parsed NRM config: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->nrmInfo:Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;

    if-nez v0, :cond_14

    const-string/jumbo v0, "null"

    :goto_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_c
    const-string/jumbo v0, "signInConfig"

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 169
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 170
    const-string/jumbo v0, "nf_config_data"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SignIn config json: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "signInConfig"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_d
    const-string/jumbo v0, "signInConfig"

    const-class v3, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    invoke-static {v2, v0, v3}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getPropertyObject(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    iput-object v0, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->signInConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    .line 173
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 174
    const-string/jumbo v3, "nf_config_data"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Parsed SingIn config: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->signInConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    if-nez v0, :cond_15

    const-string/jumbo v0, "null"

    :goto_5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_e
    const-string/jumbo v0, "customerSupportVoipAuthorizations"

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 180
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 181
    const-string/jumbo v0, "nf_config_data"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Customer Support VOIP authorizations json: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "customerSupportVoipAuthorizations"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_f
    const-string/jumbo v0, "customerSupportVoipAuthorizations"

    const-class v3, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorizationData;

    invoke-static {v2, v0, v3}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getPropertyObject(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorizationData;

    iput-object v0, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->customerSupportVoipAuthorizations:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorizationData;

    .line 186
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 187
    const-string/jumbo v0, "nf_config_data"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parsed VOIP authorizations: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->customerSupportVoipAuthorizations:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorizationData;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move-object v0, v1

    .line 191
    goto/16 :goto_0

    .line 112
    :cond_11
    iget-object v0, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->accountConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->toJsonString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 125
    :cond_12
    iget-object v0, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->abTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->toJsonString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 137
    :cond_13
    iget-object v0, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->castKeyData:Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;->toJsonString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 163
    :cond_14
    iget-object v0, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->nrmInfo:Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;->toJsonString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 174
    :cond_15
    iget-object v0, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->signInConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->toJsonString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5
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
    .line 69
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataRequest;->deviceConfigPql:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataRequest;->accountConfigPql:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataRequest;->abTestConfigPql:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataRequest;->streamingQoePql:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataRequest;->customerSupportVoipPql:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataRequest;->castKeyPql:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataRequest;->responseCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataRequest;->responseCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;->onConfigDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 206
    :cond_0
    return-void
.end method

.method protected onSuccess(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;)V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataRequest;->responseCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataRequest;->responseCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;->onConfigDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 199
    :cond_0
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataRequest;->onSuccess(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;)V

    return-void
.end method

.method protected parseFalkorResponse(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;
    .locals 1

    .prologue
    .line 80
    invoke-static {p1}, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataRequest;->parseConfigString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataRequest;->parseFalkorResponse(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;

    move-result-object v0

    return-object v0
.end method

.method protected shouldSkipProcessingOnInvalidUser()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method
