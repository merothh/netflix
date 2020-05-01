.class public Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCustomerEvent;
.super Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCeWebApiCommand;
.source "MdxCustomerEvent.java"


# static fields
.field private static final DATA_FIELD:Ljava/lang/String; = "data"


# instance fields
.field private final mEventData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->getInstanceWithCredentials()Lcom/netflix/mediaclient/webapi/CommonRequestParameters;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCeWebApiCommand;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;Lcom/netflix/mediaclient/webapi/CommonRequestParameters;)V

    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCustomerEvent;->mEventData:Ljava/lang/String;

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

.method public execute()V
    .locals 0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCustomerEvent;->doExecute()Ljava/lang/String;

    return-void
.end method

.method protected getBaseUrl()Ljava/lang/StringBuilder;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCustomerEvent;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    sget-object v1, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCustomerEvent;->mCustomerEventEndPoint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "/users/customerevents"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCustomerEvent;->getOuput()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "withCredentials"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "=true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0

    :cond_0
    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getCommandPath()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "/users"

    return-object v0
.end method

.method protected getHttpMethod()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 3

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCustomerEvent;->getUrl()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCustomerEvent;->getParameters()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    return-object v0
.end method

.method protected getParameters()Ljava/util/List;
    .locals 3
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

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string/jumbo v1, "output"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCustomerEvent;->getOuput()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCustomerEvent;->addIfNotNull(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "data"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCustomerEvent;->mEventData:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCustomerEvent;->addIfNotNull(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "withCredentials"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCustomerEvent;->commonRequestParameters:Lcom/netflix/mediaclient/webapi/CommonRequestParameters;

    iget-object v2, v2, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->withCredentials:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCustomerEvent;->addIfNotNull(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
