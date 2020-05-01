.class public abstract Lcom/netflix/mediaclient/webapi/WebApiCommand;
.super Ljava/lang/Object;
.source "WebApiCommand.java"


# static fields
.field private static final COOKIE_SET_CHECK:Ljava/lang/String; = "Set-Cookie"

.field protected static final HTTP:Ljava/lang/String; = "http://"

.field protected static final HTTPS:Ljava/lang/String; = "https://"

.field protected static final MAX_RE_EXECUTION_TIMES:I = 0x5

.field private static final NETFLIX_ID:Ljava/lang/String; = "NetflixId"

.field private static final NETFLIX_ID_TEST:Ljava/lang/String; = "NetflixIdTest"

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

.field private static final SECURE_NETFLIX_ID:Ljava/lang/String; = "SecureNetflixId"

.field private static final SECURE_NETFLIX_ID_TEST:Ljava/lang/String; = "SecureNetflixIdTest"

.field protected static final TAG:Ljava/lang/String; = "nf_rest"

.field protected static final VERSION_20:Ljava/lang/String; = "2.0"


# instance fields
.field protected commonRequestParameters:Lcom/netflix/mediaclient/webapi/CommonRequestParameters;

.field private count:I

.field protected credentials:Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;

.field protected esn:Ljava/lang/String;

.field protected updated:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;Lcom/netflix/mediaclient/webapi/CommonRequestParameters;)V
    .locals 2

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    if-nez p2, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Netflix id or secure netflix id is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    iput-object p2, p0, Lcom/netflix/mediaclient/webapi/WebApiCommand;->credentials:Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;

    .line 128
    iput-object p3, p0, Lcom/netflix/mediaclient/webapi/WebApiCommand;->commonRequestParameters:Lcom/netflix/mediaclient/webapi/CommonRequestParameters;

    .line 129
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

    .prologue
    .line 312
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    const-string/jumbo v0, "nf_rest"

    const-string/jumbo v1, "No cookies in response"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_0
    return-void

    .line 315
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 316
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 317
    const-string/jumbo v0, "nf_rest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Response cookie: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_2
    const-string/jumbo v2, "NetflixId"

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 321
    iget-object v2, p0, Lcom/netflix/mediaclient/webapi/WebApiCommand;->credentials:Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    iget-object v3, p0, Lcom/netflix/mediaclient/webapi/WebApiCommand;->credentials:Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;

    iget-object v3, v3, Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/netflix/mediaclient/webapi/WebApiCommand;->updateProperty(Lorg/apache/http/cookie/Cookie;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    .line 324
    :cond_3
    const-string/jumbo v2, "SecureNetflixId"

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 325
    iget-object v2, p0, Lcom/netflix/mediaclient/webapi/WebApiCommand;->credentials:Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    iget-object v3, p0, Lcom/netflix/mediaclient/webapi/WebApiCommand;->credentials:Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;

    iget-object v3, v3, Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;->secureNetflixId:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/netflix/mediaclient/webapi/WebApiCommand;->updateProperty(Lorg/apache/http/cookie/Cookie;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;->secureNetflixId:Ljava/lang/String;

    .line 315
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private dumpCookies(Lorg/apache/http/HttpResponse;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 338
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 341
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    .line 342
    if-eqz v2, :cond_1

    array-length v1, v2

    if-lez v1, :cond_1

    .line 343
    const-string/jumbo v1, "nf_rest"

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

    .line 344
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 345
    const-string/jumbo v5, "nf_rest"

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

    .line 346
    if-eqz v4, :cond_0

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Set-Cookie"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 347
    add-int/lit8 v0, v0, 0x1

    .line 344
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 351
    :cond_1
    const-string/jumbo v1, "nf_rest"

    const-string/jumbo v2, "No headers!!!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_2
    const-string/jumbo v1, "nf_rest"

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

    .line 355
    const-string/jumbo v0, "nf_rest"

    const-string/jumbo v1, "----------------------------------------"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const-string/jumbo v0, "nf_rest"

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

    .line 358
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_3

    .line 360
    const-string/jumbo v1, "nf_rest"

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

    .line 363
    :cond_3
    return-void
.end method

.method public static getNetflixIdName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 598
    const-string/jumbo v0, "NetflixId"

    return-object v0
.end method

.method public static getSecureNetflixIdName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 606
    const-string/jumbo v0, "SecureNetflixId"

    return-object v0
.end method

.method private updateProperty(Lorg/apache/http/cookie/Cookie;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 158
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 160
    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 161
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    const-string/jumbo v0, "nf_rest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not changed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_1
    :goto_0
    return-object p2

    .line 166
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 167
    const-string/jumbo v2, "nf_rest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " is now "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/webapi/WebApiCommand;->updated:Z

    move-object p2, v0

    .line 170
    goto :goto_0
.end method


# virtual methods
.method protected addIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 589
    if-eqz p3, :cond_0

    .line 590
    const/16 v0, 0x26

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 592
    :cond_0
    return-void
.end method

.method protected addIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 570
    if-eqz p3, :cond_0

    .line 573
    const/16 v0, 0x26

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "utf-8"

    invoke-static {p3, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 575
    :catch_0
    move-exception v0

    .line 576
    const-string/jumbo v1, "nf_rest"

    const-string/jumbo v2, "Failed with encoding"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected checkStatus(ILjava/lang/String;)Z
    .locals 4

    .prologue
    const/16 v2, 0xc8

    const/4 v0, 0x0

    .line 278
    const/16 v1, 0x19a

    if-ne p1, v1, :cond_2

    .line 279
    const-string/jumbo v0, "nf_rest"

    const-string/jumbo v1, "Received 410: Redirecting... "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 281
    const-string/jumbo v1, "host"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    const-string/jumbo v1, "nf_rest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Response 410: new WebAPI end point received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_0
    invoke-static {v0}, Lcom/netflix/mediaclient/webapi/HttpClientFactory;->setWebApiEndPoint(Ljava/lang/String;)V

    .line 288
    const/4 v0, 0x1

    .line 296
    :cond_1
    :goto_0
    return v0

    .line 289
    :cond_2
    if-ne p1, v2, :cond_3

    .line 290
    const-string/jumbo v1, "nf_rest"

    const-string/jumbo v2, "Response 200. All good"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 292
    :cond_3
    if-le p1, v2, :cond_4

    const/16 v1, 0x18f

    if-gt p1, v1, :cond_4

    .line 293
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    const-string/jumbo v1, "nf_rest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 298
    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 299
    const-string/jumbo v0, "nf_rest"

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

    .line 301
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
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 195
    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/webapi/WebApiCommand;->credentials:Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;

    iget-object v0, v0, Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/webapi/WebApiCommand;->credentials:Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;

    iget-object v2, v2, Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;->secureNetflixId:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/webapi/HttpClientFactory;->getHttpClient(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    .line 201
    const/4 v2, 0x1

    move-object v3, v1

    .line 202
    :goto_0
    if-eqz v2, :cond_a

    .line 204
    :try_start_1
    iget v0, p0, Lcom/netflix/mediaclient/webapi/WebApiCommand;->count:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 205
    new-instance v0, Lorg/apache/http/HttpException;

    const-string/jumbo v1, "Too many retries!"

    invoke-direct {v0, v1}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    :catchall_0
    move-exception v0

    move-object v1, v4

    :goto_1
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v0

    .line 207
    :cond_0
    :try_start_2
    iget v0, p0, Lcom/netflix/mediaclient/webapi/WebApiCommand;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/webapi/WebApiCommand;->count:I

    .line 209
    invoke-virtual {p0}, Lcom/netflix/mediaclient/webapi/WebApiCommand;->getHttpMethod()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v6

    .line 211
    invoke-virtual {p0}, Lcom/netflix/mediaclient/webapi/WebApiCommand;->getHeaders()[Landroid/util/Pair;

    move-result-object v7

    .line 212
    if-eqz v7, :cond_4

    array-length v0, v7

    if-lez v0, :cond_4

    .line 214
    const/4 v0, 0x0

    move v5, v0

    :goto_2
    array-length v0, v7

    if-ge v5, v0, :cond_5

    .line 215
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    const-string/jumbo v1, "nf_rest"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Add header "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v0, v7, v5

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v8, " with value: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v0, v7, v5

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_1
    aget-object v0, v7, v5

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_2

    aget-object v0, v7, v5

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 214
    :cond_2
    :goto_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    .line 221
    :cond_3
    aget-object v0, v7, v5

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    aget-object v1, v7, v5

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 225
    :cond_4
    const-string/jumbo v0, "nf_rest"

    const-string/jumbo v1, "No header found"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_5
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 229
    const-string/jumbo v0, "nf_rest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "executing request "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ", attempt: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/netflix/mediaclient/webapi/WebApiCommand;->count:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_6
    invoke-virtual {v4, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 233
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 234
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    .line 236
    if-nez v1, :cond_7

    .line 237
    const-string/jumbo v0, "nf_rest"

    const-string/jumbo v1, "Status is NULL. It should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Status is NULL. It should NOT happen!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_7
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 241
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 242
    const-string/jumbo v7, "nf_rest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Response status: code "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", text "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", protocol "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/webapi/WebApiCommand;->dumpCookies(Lorg/apache/http/HttpResponse;)V

    .line 246
    :cond_8
    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/webapi/WebApiCommand;->checkForCredentialUpdate(Ljava/util/List;)V

    .line 248
    if-eqz v5, :cond_b

    .line 249
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 250
    invoke-static {v0}, Lcom/android/volley/toolbox/InputStreamUtil;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 252
    const-string/jumbo v0, "nf_rest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Full content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_9
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 256
    invoke-virtual {p0, v6, v1}, Lcom/netflix/mediaclient/webapi/WebApiCommand;->checkStatus(ILjava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    :goto_4
    move v2, v0

    move-object v3, v1

    .line 258
    goto/16 :goto_0

    .line 261
    :cond_a
    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 264
    return-object v3

    .line 261
    :catchall_1
    move-exception v0

    goto/16 :goto_1

    :cond_b
    move v0, v2

    move-object v1, v3

    goto :goto_4
.end method

.method protected getBaseCmsBeaconUrl()Ljava/lang/StringBuilder;
    .locals 3

    .prologue
    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 470
    invoke-virtual {p0}, Lcom/netflix/mediaclient/webapi/WebApiCommand;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/webapi/HttpClientFactory;->getCmsBeaconApiEndPoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-virtual {p0}, Lcom/netflix/mediaclient/webapi/WebApiCommand;->getCommandPath()Ljava/lang/String;

    move-result-object v1

    .line 480
    if-nez v1, :cond_1

    .line 481
    const-string/jumbo v0, "nf_rest"

    const-string/jumbo v1, "Path is NULL!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const/4 v0, 0x0

    .line 492
    :goto_1
    return-object v0

    .line 473
    :cond_0
    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 485
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 486
    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 487
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 490
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method protected getBaseCustomerEventBeaconUrl()Ljava/lang/StringBuilder;
    .locals 3

    .prologue
    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 506
    invoke-virtual {p0}, Lcom/netflix/mediaclient/webapi/WebApiCommand;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/webapi/HttpClientFactory;->getCustomerEventBeaconApiEndPoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    invoke-virtual {p0}, Lcom/netflix/mediaclient/webapi/WebApiCommand;->getCommandPath()Ljava/lang/String;

    move-result-object v1

    .line 516
    if-nez v1, :cond_1

    .line 517
    const-string/jumbo v0, "nf_rest"

    const-string/jumbo v1, "Path is NULL!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const/4 v0, 0x0

    .line 528
    :goto_1
    return-object v0

    .line 509
    :cond_0
    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 521
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 522
    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 523
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 526
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method protected getBaseWebAPiUrl()Ljava/lang/StringBuilder;
    .locals 3

    .prologue
    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    invoke-virtual {p0}, Lcom/netflix/mediaclient/webapi/WebApiCommand;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/webapi/HttpClientFactory;->getWebApiEndPoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {p0}, Lcom/netflix/mediaclient/webapi/WebApiCommand;->getCommandPath()Ljava/lang/String;

    move-result-object v1

    .line 444
    if-nez v1, :cond_1

    .line 445
    const-string/jumbo v0, "nf_rest"

    const-string/jumbo v1, "Path is NULL!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const/4 v0, 0x0

    .line 456
    :goto_1
    return-object v0

    .line 437
    :cond_0
    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 449
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 450
    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 451
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 454
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public abstract getCommandPath()Ljava/lang/String;
.end method

.method public getCommonRequestParameters()Lcom/netflix/mediaclient/webapi/CommonRequestParameters;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/netflix/mediaclient/webapi/WebApiCommand;->commonRequestParameters:Lcom/netflix/mediaclient/webapi/CommonRequestParameters;

    return-object v0
.end method

.method public getCredentials()Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/netflix/mediaclient/webapi/WebApiCommand;->credentials:Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;

    return-object v0
.end method

.method public getHeaders()[Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/util/Pair;

    return-object v0
.end method

.method protected abstract getHttpMethod()Lorg/apache/http/client/methods/HttpUriRequest;
.end method

.method public getOuput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    const-string/jumbo v0, "json"

    return-object v0
.end method

.method public getRouting()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    const-string/jumbo v0, "reject"

    return-object v0
.end method

.method protected getUrl()Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/netflix/mediaclient/webapi/WebApiCommand;->getBaseWebAPiUrl()Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    const-string/jumbo v0, "2.0"

    return-object v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method public isUpdated()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/netflix/mediaclient/webapi/WebApiCommand;->updated:Z

    return v0
.end method

.method protected verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 556
    if-nez p1, :cond_0

    .line 557
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

    .line 560
    :cond_0
    return-void
.end method
