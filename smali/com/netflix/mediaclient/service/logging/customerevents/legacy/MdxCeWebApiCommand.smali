.class public abstract Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCeWebApiCommand;
.super Ljava/lang/Object;
.source "MdxCeWebApiCommand.java"


# static fields
.field private static final COOKIE_SET_CHECK:Ljava/lang/String; = "Set-Cookie"

.field private static final CUSTOMEREVENT_ENDPOINT_PROD:Ljava/lang/String; = "customerevents.netflix.com"

.field protected static final HTTP:Ljava/lang/String; = "http://"

.field protected static final HTTPS:Ljava/lang/String; = "https://"

.field protected static final MAX_RE_EXECUTION_TIMES:I = 0x5

.field public static final NETFLIX_ID:Ljava/lang/String; = "NetflixId"

.field protected static final OUTPUT_JSON:Ljava/lang/String; = "json"

.field protected static final OUTPUT_XML:Ljava/lang/String; = "xml"

.field protected static final PARAMETER_APP_VERSION:Ljava/lang/String; = "app_version"

.field protected static final PARAMETER_COUNTRY:Ljava/lang/String; = "country"

.field protected static final PARAMETER_DEVICE_CAT:Ljava/lang/String; = "device_cat"

.field protected static final PARAMETER_DEVICE_TYPE:Ljava/lang/String; = "device_type"

.field protected static final PARAMETER_ESN:Ljava/lang/String; = "esn"

.field protected static final PARAMETER_GEOLOCATION_COUNTRY:Ljava/lang/String; = "geolocation_country"

.field protected static final PARAMETER_LANGUAGES:Ljava/lang/String; = "languages"

.field protected static final PARAMETER_OS_VERSION:Ljava/lang/String; = "os_version"

.field protected static final PARAMETER_OUTPUT:Ljava/lang/String; = "output"

.field protected static final PARAMETER_ROUTING:Ljava/lang/String; = "routing"

.field protected static final PARAMETER_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field protected static final PARAMETER_UI_VERSION:Ljava/lang/String; = "ui_version"

.field protected static final PARAMETER_UUID:Ljava/lang/String; = "uuid"

.field protected static final PARAMETER_VERSION:Ljava/lang/String; = "v"

.field protected static final PARAMETER_WITH_CREDENTIALS:Ljava/lang/String; = "withCredentials"

.field protected static final PATH_USERS:Ljava/lang/String; = "/users"

.field protected static final PATH_USERS_CURRENT:Ljava/lang/String; = "/users/current"

.field protected static final ROUTING_EMPTY:Ljava/lang/String; = "reject-empty"

.field protected static final ROUTING_REDIRECT:Ljava/lang/String; = "redirect"

.field protected static final ROUTING_REJECT:Ljava/lang/String; = "reject"

.field public static final SECURE_NETFLIX_ID:Ljava/lang/String; = "SecureNetflixId"

.field protected static final TAG:Ljava/lang/String; = "nf_mdxMdxCustomerEventrest"

.field protected static final VERSION_20:Ljava/lang/String; = "2.0"

.field protected static mCustomerEventEndPoint:Ljava/lang/String;


# instance fields
.field protected commonRequestParameters:Lcom/netflix/mediaclient/webapi/CommonRequestParameters;

.field private count:I

.field protected credentials:Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;

.field protected esn:Ljava/lang/String;

.field protected updated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "customerevents.netflix.com"

    sput-object v0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCeWebApiCommand;->mCustomerEventEndPoint:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;Lcom/netflix/mediaclient/webapi/CommonRequestParameters;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Netflix id or secure netflix id is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCeWebApiCommand;->credentials:Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCeWebApiCommand;->commonRequestParameters:Lcom/netflix/mediaclient/webapi/CommonRequestParameters;

    return-void
.end method

.method private checkForCredentialUpdate(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_mdxMdxCustomerEventrest"

    const-string/jumbo v1, "No cookies in response"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    const-string/jumbo v2, "NetflixId"

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCeWebApiCommand;->credentials:Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCeWebApiCommand;->credentials:Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;

    iget-object v3, v3, Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCeWebApiCommand;->updateProperty(Lorg/apache/http/cookie/Cookie;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    :cond_2
    const-string/jumbo v2, "SecureNetflixId"

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCeWebApiCommand;->credentials:Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCeWebApiCommand;->credentials:Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;

    iget-object v3, v3, Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;->secureNetflixId:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCeWebApiCommand;->updateProperty(Lorg/apache/http/cookie/Cookie;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;->secureNetflixId:Ljava/lang/String;

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private dumpCookies(Lorg/apache/http/HttpResponse;)V
    .locals 8

    const/4 v0, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v1, v2

    if-lez v1, :cond_1

    const-string/jumbo v1, "nf_mdxMdxCustomerEventrest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "We got headers: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    const-string/jumbo v5, "nf_mdxMdxCustomerEventrest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Set-Cookie"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "nf_mdxMdxCustomerEventrest"

    const-string/jumbo v2, "No headers!!!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string/jumbo v1, "nf_mdxMdxCustomerEventrest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cookies set in response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "nf_mdxMdxCustomerEventrest"

    const-string/jumbo v1, "----------------------------------------"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "nf_mdxMdxCustomerEventrest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Response status line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v1, "nf_mdxMdxCustomerEventrest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Response content length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private updateProperty(Lorg/apache/http/cookie/Cookie;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCeWebApiCommand;->updated:Z

    move-object p2, v0

    goto :goto_0
.end method


# virtual methods
.method protected checkStatus(ILjava/lang/String;)Z
    .locals 3

    const/16 v0, 0x19a

    if-ne p1, v0, :cond_1

    const-string/jumbo v0, "nf_mdxMdxCustomerEventrest"

    const-string/jumbo v1, "Received 410: Redirecting... "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "host"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCeWebApiCommand;->mCustomerEventEndPoint:Ljava/lang/String;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_mdxMdxCustomerEventrest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Response 410: new WebAPI end point received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCeWebApiCommand;->mCustomerEventEndPoint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0xc8

    if-eq p1, v0, :cond_2

    const/16 v0, 0xca

    if-ne p1, v0, :cond_4

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "nf_mdxMdxCustomerEventrest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Response succeed with code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "nf_mdxMdxCustomerEventrest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v0, Lorg/apache/http/HttpException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed with response code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected doExecute()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCeWebApiCommand;->credentials:Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;

    iget-object v0, v0, Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCeWebApiCommand;->credentials:Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;

    iget-object v2, v2, Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;->secureNetflixId:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/webapi/HttpClientFactory;->getHttpClient(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    const/4 v0, 0x1

    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    :try_start_1
    iget v3, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCeWebApiCommand;->count:I

    const/4 v4, 0x5

    if-le v3, v4, :cond_1

    new-instance v0, Lorg/apache/http/HttpException;

    const-string/jumbo v1, "Too many retries!"

    invoke-direct {v0, v1}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v0

    :cond_1
    :try_start_2
    iget v3, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCeWebApiCommand;->count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCeWebApiCommand;->count:I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCeWebApiCommand;->getHttpMethod()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    if-nez v3, :cond_2

    const-string/jumbo v0, "nf_mdxMdxCustomerEventrest"

    const-string/jumbo v1, "Status is NULL. It should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Status is NULL. It should NOT happen!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCeWebApiCommand;->checkForCredentialUpdate(Ljava/util/List;)V

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/android/volley/toolbox/InputStreamUtil;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V

    invoke-virtual {p0, v3, v1}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCeWebApiCommand;->checkStatus(ILjava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    return-object v1

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method protected getBaseUrl()Ljava/lang/StringBuilder;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCeWebApiCommand;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    sget-object v1, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCeWebApiCommand;->mCustomerEventEndPoint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCeWebApiCommand;->getCommandPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v0, "nf_mdxMdxCustomerEventrest"

    const-string/jumbo v1, "Path is NULL!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public abstract getCommandPath()Ljava/lang/String;
.end method

.method public getCommonRequestParameters()Lcom/netflix/mediaclient/webapi/CommonRequestParameters;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCeWebApiCommand;->commonRequestParameters:Lcom/netflix/mediaclient/webapi/CommonRequestParameters;

    return-object v0
.end method

.method public getCredentials()Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCeWebApiCommand;->credentials:Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;

    return-object v0
.end method

.method protected abstract getHttpMethod()Lorg/apache/http/client/methods/HttpUriRequest;
.end method

.method public getOuput()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "json"

    return-object v0
.end method

.method public getRouting()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "reject"

    return-object v0
.end method

.method protected getUrl()Ljava/lang/StringBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCeWebApiCommand;->getBaseUrl()Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "2.0"

    return-object v0
.end method

.method public isSecure()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isUpdated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCeWebApiCommand;->updated:Z

    return v0
.end method

.method protected verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " can not be null!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
