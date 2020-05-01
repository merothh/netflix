.class public final Lcom/netflix/mediaclient/util/VolleyUtils;
.super Ljava/lang/Object;
.source "VolleyUtils.java"


# static fields
.field public static HTTP_STATUS_REQUEST_TIMEOUT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "nf_volley"

.field public static final TIMEOUT_ERROR:Lcom/android/volley/VolleyError;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 47
    const/16 v0, 0x198

    sput v0, Lcom/netflix/mediaclient/util/VolleyUtils;->HTTP_STATUS_REQUEST_TIMEOUT:I

    .line 49
    new-instance v0, Lcom/android/volley/VolleyError;

    new-instance v1, Lcom/android/volley/NetworkResponse;

    sget v2, Lcom/netflix/mediaclient/util/VolleyUtils;->HTTP_STATUS_REQUEST_TIMEOUT:I

    new-array v3, v5, [B

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Z)V

    invoke-direct {v0, v1}, Lcom/android/volley/VolleyError;-><init>(Lcom/android/volley/NetworkResponse;)V

    sput-object v0, Lcom/netflix/mediaclient/util/VolleyUtils;->TIMEOUT_ERROR:Lcom/android/volley/VolleyError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static getStatus(Lcom/android/volley/VolleyError;Lcom/netflix/mediaclient/servicemgr/ErrorLogging;)Lcom/netflix/mediaclient/android/app/NetflixStatus;
    .locals 4

    .prologue
    .line 60
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->INTERNAL_ERROR:Lcom/netflix/mediaclient/StatusCode;

    .line 61
    invoke-virtual {p0}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 63
    instance-of v2, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    if-eqz v2, :cond_1

    .line 64
    invoke-static {v1, p1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;->getErrorCode(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ErrorLogging;)Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    .line 82
    :cond_0
    :goto_0
    const-string/jumbo v1, "nf_volley"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getStatus statusCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    .line 85
    invoke-static {p0}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->toError(Lcom/android/volley/VolleyError;)Lcom/netflix/mediaclient/service/logging/client/model/Error;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->setError(Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 86
    return-object v1

    .line 66
    :cond_1
    instance-of v1, p0, Lcom/android/volley/ServerError;

    if-eqz v1, :cond_2

    .line 67
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->SERVER_ERROR:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 69
    :cond_2
    instance-of v1, p0, Lcom/android/volley/TimeoutError;

    if-eqz v1, :cond_3

    .line 70
    invoke-static {p0}, Lcom/netflix/mediaclient/util/VolleyUtils;->getStatusCodeFromVolleyNetworkError(Lcom/android/volley/VolleyError;)Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_3
    instance-of v1, p0, Lcom/android/volley/NetworkError;

    if-eqz v1, :cond_4

    .line 73
    invoke-static {p0}, Lcom/netflix/mediaclient/util/VolleyUtils;->getStatusCodeFromVolleyNetworkError(Lcom/android/volley/VolleyError;)Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    goto :goto_0

    .line 75
    :cond_4
    instance-of v1, p0, Lcom/android/volley/NoConnectionError;

    if-eqz v1, :cond_5

    .line 76
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->NO_CONNECTIVITY:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 78
    :cond_5
    instance-of v1, p0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 79
    check-cast v0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    goto :goto_0
.end method

.method private static getStatusCodeFromVolleyNetworkError(Lcom/android/volley/VolleyError;)Lcom/netflix/mediaclient/StatusCode;
    .locals 4

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 92
    if-nez v0, :cond_1

    .line 93
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->NETWORK_ERROR:Lcom/netflix/mediaclient/StatusCode;

    .line 111
    :cond_0
    :goto_0
    return-object v0

    .line 95
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    const-string/jumbo v0, "nf_volley"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ".next call failed with error ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->NETWORK_ERROR:Lcom/netflix/mediaclient/StatusCode;

    .line 103
    const-string/jumbo v2, "sslhandshakeexception"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->HTTP_SSL_ERROR:Lcom/netflix/mediaclient/StatusCode;

    .line 105
    const-string/jumbo v2, "current time"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "validation time"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 106
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->HTTP_SSL_DATE_TIME_ERROR:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 107
    :cond_3
    const-string/jumbo v2, "no trusted certificate found"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->HTTP_SSL_NO_VALID_CERT:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0
.end method

.method private static isNetworkResponseExist(Lcom/android/volley/VolleyError;)Z
    .locals 1

    .prologue
    .line 146
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toError(Lcom/android/volley/VolleyError;)Lcom/netflix/mediaclient/service/logging/client/model/Error;
    .locals 7

    .prologue
    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    new-instance v1, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;-><init>()V

    .line 118
    new-instance v2, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;-><init>()V

    .line 119
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->setDebug(Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;)V

    .line 121
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->setFatal(Z)V

    .line 122
    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->NETWORK_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/StatusCode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->setErrorCode(Ljava/lang/String;)V

    .line 124
    invoke-static {p0}, Lcom/netflix/mediaclient/util/VolleyUtils;->isNetworkResponseExist(Lcom/android/volley/VolleyError;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 128
    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->setMessage(Lorg/json/JSONObject;)V

    .line 129
    const-string/jumbo v3, "statusCode"

    iget-object v4, p0, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v4, v4, Lcom/android/volley/NetworkResponse;->statusCode:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 130
    iget-object v3, p0, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v3, v3, Lcom/android/volley/NetworkResponse;->data:[B

    if-eqz v3, :cond_0

    .line 131
    const-string/jumbo v3, "response"

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v5, v5, Lcom/android/volley/NetworkResponse;->data:[B

    const-string/jumbo v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/volley/VolleyError;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 139
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->setStackTrace(Ljava/lang/String;)V

    .line 142
    :cond_1
    new-instance v1, Lcom/netflix/mediaclient/service/logging/client/model/Error;

    invoke-static {p0}, Lcom/netflix/mediaclient/util/VolleyUtils;->toRootCause(Lcom/android/volley/VolleyError;)Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/netflix/mediaclient/service/logging/client/model/Error;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Ljava/util/List;)V

    return-object v1

    .line 134
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static toRootCause(Lcom/android/volley/VolleyError;)Lcom/netflix/mediaclient/service/logging/client/model/RootCause;
    .locals 3

    .prologue
    const/16 v2, 0x1f4

    .line 151
    invoke-static {p0}, Lcom/netflix/mediaclient/util/VolleyUtils;->isNetworkResponseExist(Lcom/android/volley/VolleyError;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->networkFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    .line 175
    :goto_0
    return-object v0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v0, v0, Lcom/android/volley/NetworkResponse;->statusCode:I

    .line 157
    const/16 v1, 0x190

    if-lt v0, v1, :cond_1

    if-ge v0, v2, :cond_1

    .line 158
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->http4xx:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    goto :goto_0

    .line 160
    :cond_1
    if-lt v0, v2, :cond_2

    const/16 v1, 0x258

    if-ge v0, v1, :cond_2

    .line 161
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->http5xx:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    goto :goto_0

    .line 164
    :cond_2
    invoke-static {p0}, Lcom/netflix/mediaclient/util/VolleyUtils;->getStatusCodeFromVolleyNetworkError(Lcom/android/volley/VolleyError;)Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    .line 165
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->HTTP_SSL_ERROR:Lcom/netflix/mediaclient/StatusCode;

    if-ne v0, v1, :cond_3

    .line 166
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->sslHandshakeFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    goto :goto_0

    .line 168
    :cond_3
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->HTTP_SSL_DATE_TIME_ERROR:Lcom/netflix/mediaclient/StatusCode;

    if-ne v0, v1, :cond_4

    .line 169
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->sslExpiredCert:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    goto :goto_0

    .line 171
    :cond_4
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->HTTP_SSL_NO_VALID_CERT:Lcom/netflix/mediaclient/StatusCode;

    if-ne v0, v1, :cond_5

    .line 172
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->sslUntrustedCert:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    goto :goto_0

    .line 175
    :cond_5
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->networkFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    goto :goto_0
.end method
