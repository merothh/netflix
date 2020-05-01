.class public abstract Lcom/netflix/mediaclient/webapi/WebApiGetCommand;
.super Lcom/netflix/mediaclient/webapi/WebApiCommand;
.source "WebApiGetCommand.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;Lcom/netflix/mediaclient/webapi/CommonRequestParameters;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/webapi/WebApiCommand;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;Lcom/netflix/mediaclient/webapi/CommonRequestParameters;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected getHttpMethod()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/webapi/WebApiGetCommand;->getUrl()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected getUrl()Ljava/lang/StringBuilder;
    .locals 6

    .prologue
    const/16 v5, 0x26

    const/16 v4, 0x3d

    .line 46
    invoke-super {p0}, Lcom/netflix/mediaclient/webapi/WebApiCommand;->getUrl()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 48
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    const-string/jumbo v1, "output"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/webapi/WebApiGetCommand;->getOuput()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    const-string/jumbo v1, "routing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/webapi/WebApiGetCommand;->getRouting()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    const-string/jumbo v1, "timestamp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    const-string/jumbo v1, "v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/webapi/WebApiGetCommand;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string/jumbo v1, "esn"

    iget-object v2, p0, Lcom/netflix/mediaclient/webapi/WebApiGetCommand;->esn:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/webapi/WebApiGetCommand;->addIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/netflix/mediaclient/webapi/WebApiGetCommand;->commonRequestParameters:Lcom/netflix/mediaclient/webapi/CommonRequestParameters;

    if-eqz v1, :cond_0

    .line 56
    const-string/jumbo v1, "withCredentials"

    iget-object v2, p0, Lcom/netflix/mediaclient/webapi/WebApiGetCommand;->commonRequestParameters:Lcom/netflix/mediaclient/webapi/CommonRequestParameters;

    iget-object v2, v2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->withCredentials:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/webapi/WebApiGetCommand;->addIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string/jumbo v1, "app_version"

    iget-object v2, p0, Lcom/netflix/mediaclient/webapi/WebApiGetCommand;->commonRequestParameters:Lcom/netflix/mediaclient/webapi/CommonRequestParameters;

    iget-object v2, v2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->appVersion:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/webapi/WebApiGetCommand;->addIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string/jumbo v1, "ui_version"

    iget-object v2, p0, Lcom/netflix/mediaclient/webapi/WebApiGetCommand;->commonRequestParameters:Lcom/netflix/mediaclient/webapi/CommonRequestParameters;

    iget-object v2, v2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->uiVersion:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/webapi/WebApiGetCommand;->addIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string/jumbo v1, "os_version"

    iget-object v2, p0, Lcom/netflix/mediaclient/webapi/WebApiGetCommand;->commonRequestParameters:Lcom/netflix/mediaclient/webapi/CommonRequestParameters;

    iget-object v2, v2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->osVersion:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/webapi/WebApiGetCommand;->addIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string/jumbo v1, "country"

    iget-object v2, p0, Lcom/netflix/mediaclient/webapi/WebApiGetCommand;->commonRequestParameters:Lcom/netflix/mediaclient/webapi/CommonRequestParameters;

    iget-object v2, v2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->country:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/webapi/WebApiGetCommand;->addIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string/jumbo v1, "geolocation_country"

    iget-object v2, p0, Lcom/netflix/mediaclient/webapi/WebApiGetCommand;->commonRequestParameters:Lcom/netflix/mediaclient/webapi/CommonRequestParameters;

    iget-object v2, v2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->geolocationCountry:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/webapi/WebApiGetCommand;->addIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string/jumbo v1, "device_cat"

    iget-object v2, p0, Lcom/netflix/mediaclient/webapi/WebApiGetCommand;->commonRequestParameters:Lcom/netflix/mediaclient/webapi/CommonRequestParameters;

    iget-object v2, v2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->deviceCategory:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/webapi/WebApiGetCommand;->addIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string/jumbo v1, "device_type"

    iget-object v2, p0, Lcom/netflix/mediaclient/webapi/WebApiGetCommand;->commonRequestParameters:Lcom/netflix/mediaclient/webapi/CommonRequestParameters;

    iget-object v2, v2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->deviceType:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/webapi/WebApiGetCommand;->addIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string/jumbo v1, "languages"

    iget-object v2, p0, Lcom/netflix/mediaclient/webapi/WebApiGetCommand;->commonRequestParameters:Lcom/netflix/mediaclient/webapi/CommonRequestParameters;

    iget-object v2, v2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->languages:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/webapi/WebApiGetCommand;->addIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    return-object v0
.end method
