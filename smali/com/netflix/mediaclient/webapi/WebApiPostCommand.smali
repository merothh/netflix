.class public abstract Lcom/netflix/mediaclient/webapi/WebApiPostCommand;
.super Lcom/netflix/mediaclient/webapi/WebApiCommand;
.source "WebApiPostCommand.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;Lcom/netflix/mediaclient/webapi/CommonRequestParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/webapi/WebApiCommand;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;Lcom/netflix/mediaclient/webapi/CommonRequestParameters;)V

    return-void
.end method


# virtual methods
.method protected addIfNotNull(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_0

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v0, p2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected getEntity()Lorg/apache/http/HttpEntity;
    .locals 2

    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/webapi/WebApiPostCommand;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method protected getHttpMethod()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 2

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/webapi/WebApiPostCommand;->getUrl()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/webapi/WebApiPostCommand;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    return-object v0
.end method

.method protected getParameters()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string/jumbo v1, "output"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/webapi/WebApiPostCommand;->getOuput()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/webapi/WebApiPostCommand;->addIfNotNull(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "v"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/webapi/WebApiPostCommand;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/webapi/WebApiPostCommand;->addIfNotNull(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "routing"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/webapi/WebApiPostCommand;->getRouting()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/webapi/WebApiPostCommand;->addIfNotNull(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/webapi/WebApiPostCommand;->addIfNotNull(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "esn"

    iget-object v2, p0, Lcom/netflix/mediaclient/webapi/WebApiPostCommand;->esn:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/webapi/WebApiPostCommand;->addIfNotNull(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/webapi/WebApiPostCommand;->commonRequestParameters:Lcom/netflix/mediaclient/webapi/CommonRequestParameters;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "withCredentials"

    iget-object v2, p0, Lcom/netflix/mediaclient/webapi/WebApiPostCommand;->commonRequestParameters:Lcom/netflix/mediaclient/webapi/CommonRequestParameters;

    iget-object v2, v2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->withCredentials:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/webapi/WebApiPostCommand;->addIfNotNull(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "app_version"

    iget-object v2, p0, Lcom/netflix/mediaclient/webapi/WebApiPostCommand;->commonRequestParameters:Lcom/netflix/mediaclient/webapi/CommonRequestParameters;

    iget-object v2, v2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->appVersion:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/webapi/WebApiPostCommand;->addIfNotNull(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ui_version"

    iget-object v2, p0, Lcom/netflix/mediaclient/webapi/WebApiPostCommand;->commonRequestParameters:Lcom/netflix/mediaclient/webapi/CommonRequestParameters;

    iget-object v2, v2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->uiVersion:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/webapi/WebApiPostCommand;->addIfNotNull(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "os_version"

    iget-object v2, p0, Lcom/netflix/mediaclient/webapi/WebApiPostCommand;->commonRequestParameters:Lcom/netflix/mediaclient/webapi/CommonRequestParameters;

    iget-object v2, v2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->osVersion:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/webapi/WebApiPostCommand;->addIfNotNull(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "country"

    iget-object v2, p0, Lcom/netflix/mediaclient/webapi/WebApiPostCommand;->commonRequestParameters:Lcom/netflix/mediaclient/webapi/CommonRequestParameters;

    iget-object v2, v2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->country:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/webapi/WebApiPostCommand;->addIfNotNull(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "geolocation_country"

    iget-object v2, p0, Lcom/netflix/mediaclient/webapi/WebApiPostCommand;->commonRequestParameters:Lcom/netflix/mediaclient/webapi/CommonRequestParameters;

    iget-object v2, v2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->geolocationCountry:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/webapi/WebApiPostCommand;->addIfNotNull(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "device_cat"

    iget-object v2, p0, Lcom/netflix/mediaclient/webapi/WebApiPostCommand;->commonRequestParameters:Lcom/netflix/mediaclient/webapi/CommonRequestParameters;

    iget-object v2, v2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->deviceCategory:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/webapi/WebApiPostCommand;->addIfNotNull(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "device_type"

    iget-object v2, p0, Lcom/netflix/mediaclient/webapi/WebApiPostCommand;->commonRequestParameters:Lcom/netflix/mediaclient/webapi/CommonRequestParameters;

    iget-object v2, v2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->deviceType:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/webapi/WebApiPostCommand;->addIfNotNull(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "languages"

    iget-object v2, p0, Lcom/netflix/mediaclient/webapi/WebApiPostCommand;->commonRequestParameters:Lcom/netflix/mediaclient/webapi/CommonRequestParameters;

    iget-object v2, v2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->languages:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/webapi/WebApiPostCommand;->addIfNotNull(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
