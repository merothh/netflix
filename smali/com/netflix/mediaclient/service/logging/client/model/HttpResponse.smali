.class public Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/logging/JsonSerializer;


# static fields
.field public static final API_SCRIPT_EXECUTION_TIME:Ljava/lang/String; = "apiScriptExecutionTime"

.field public static final CONTENT_LENGTH:Ljava/lang/String; = "contentLength"

.field public static final DNS_TIME:Ljava/lang/String; = "dnsTime"

.field public static final ENDPOINT_REVISION:Ljava/lang/String; = "apiScriptRevision"

.field public static final MIME_TYPE:Ljava/lang/String; = "mimeType"

.field public static final PARSE_TIME:Ljava/lang/String; = "parseTime"

.field public static final RESPONSE_TIME:Ljava/lang/String; = "responseTime"

.field public static final SERVER_EXECUTION_TIME:Ljava/lang/String; = "serverExecutionTime"

.field public static final SSL_TIME:Ljava/lang/String; = "sslTime"

.field public static final TRANSFER_TIME:Ljava/lang/String; = "transferTime"


# instance fields
.field private apiScriptExecutionTime:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "apiScriptExecutionTime"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 2.0
    .end annotation
.end field

.field private contentLength:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "contentLength"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private dnsTime:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dnsTime"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private endpointRevision:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "endpointRevision"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 2.0
    .end annotation
.end field

.field private mimeType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mimeType"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private parseTime:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "parseTime"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private responseTime:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "responseTime"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private serverExecutionTime:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "serverExecutionTime"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private sslTime:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sslTime"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private transferTime:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "transferTime"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;
    .locals 1

    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->createInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public static createInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;-><init>()V

    const-string/jumbo v2, "contentLength"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getIntegerObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->contentLength:Ljava/lang/Integer;

    const-string/jumbo v2, "dnsTime"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getIntegerObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->dnsTime:Ljava/lang/Integer;

    const-string/jumbo v2, "sslTime"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getIntegerObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->sslTime:Ljava/lang/Integer;

    const-string/jumbo v2, "responseTime"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getIntegerObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->responseTime:Ljava/lang/Integer;

    const-string/jumbo v2, "transferTime"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getIntegerObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->transferTime:Ljava/lang/Integer;

    const-string/jumbo v2, "serverExecutionTime"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getIntegerObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->serverExecutionTime:Ljava/lang/Integer;

    const-string/jumbo v2, "parseTime"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getIntegerObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->parseTime:Ljava/lang/Integer;

    const-string/jumbo v2, "mimeType"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->mimeType:Ljava/lang/String;

    const-string/jumbo v2, "custom"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v3, "apiScriptExecutionTime"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getIntegerObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->apiScriptExecutionTime:Ljava/lang/Integer;

    const-string/jumbo v3, "apiScriptRevision"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->endpointRevision:Ljava/lang/String;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getApiScriptExecutionTime()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->apiScriptExecutionTime:Ljava/lang/Integer;

    return-object v0
.end method

.method public getContentLength()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->contentLength:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDnsTime()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->dnsTime:Ljava/lang/Integer;

    return-object v0
.end method

.method public getEndpointRevision()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->endpointRevision:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getParseTime()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->parseTime:Ljava/lang/Integer;

    return-object v0
.end method

.method public getResponseTime()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->responseTime:Ljava/lang/Integer;

    return-object v0
.end method

.method public getServerExecutionTime()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->serverExecutionTime:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSslTime()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->sslTime:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTransferTime()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->transferTime:Ljava/lang/Integer;

    return-object v0
.end method

.method public setApiScriptExecutionTime(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->apiScriptExecutionTime:Ljava/lang/Integer;

    return-void
.end method

.method public setContentLength(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->contentLength:Ljava/lang/Integer;

    return-void
.end method

.method public setDnsTime(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->dnsTime:Ljava/lang/Integer;

    return-void
.end method

.method public setEndpointRevision(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->endpointRevision:Ljava/lang/String;

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public setParseTime(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->parseTime:Ljava/lang/Integer;

    return-void
.end method

.method public setResponseTime(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->responseTime:Ljava/lang/Integer;

    return-void
.end method

.method public setServerExecutionTime(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->serverExecutionTime:Ljava/lang/Integer;

    return-void
.end method

.method public setSslTime(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->sslTime:Ljava/lang/Integer;

    return-void
.end method

.method public setTransferTime(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->transferTime:Ljava/lang/Integer;

    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->dnsTime:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "dnsTime"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->dnsTime:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->sslTime:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "sslTime"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->sslTime:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->responseTime:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "responseTime"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->responseTime:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->transferTime:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    const-string/jumbo v1, "transferTime"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->transferTime:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->serverExecutionTime:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    const-string/jumbo v1, "serverExecutionTime"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->serverExecutionTime:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->parseTime:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    const-string/jumbo v1, "parseTime"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->parseTime:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->contentLength:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    const-string/jumbo v1, "contentLength"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->contentLength:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->mimeType:Ljava/lang/String;

    if-eqz v1, :cond_7

    const-string/jumbo v1, "mimeType"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->apiScriptExecutionTime:Ljava/lang/Integer;

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->endpointRevision:Ljava/lang/String;

    if-eqz v1, :cond_a

    :cond_8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "custom"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->apiScriptExecutionTime:Ljava/lang/Integer;

    if-eqz v2, :cond_9

    const-string/jumbo v2, "apiScriptExecutionTime"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->apiScriptExecutionTime:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->endpointRevision:Ljava/lang/String;

    if-eqz v2, :cond_a

    const-string/jumbo v2, "apiScriptRevision"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->endpointRevision:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HttpResponse [dnsTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->dnsTime:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sslTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->sslTime:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", responseTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->responseTime:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", transferTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->transferTime:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", serverExecutionTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->serverExecutionTime:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", parseTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->parseTime:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", contentLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->contentLength:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", apiScriptExecutionTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->apiScriptExecutionTime:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", endpointRevision="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->endpointRevision:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
