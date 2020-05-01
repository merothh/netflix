.class public final Lcom/netflix/mediaclient/webapi/HttpClientFactory;
.super Ljava/lang/Object;
.source "HttpClientFactory.java"


# static fields
.field protected static final CMS_BEACON_ENDPOINT_URL:Ljava/lang/String; = "ichnaea.netflix.com"

.field protected static final CUSTOMER_EVENTS_BEACON_ENDPOINT_URL:Ljava/lang/String; = "customerevents.netflix.com"

.field private static final DOMAIN:Ljava/lang/String; = ".netflix.com"

.field private static final HTTP_CONN_TIMEOUT:I = 0x1388

.field private static final HTTP_SO_TIMEOUT:I = 0x1388

.field private static final PATH:Ljava/lang/String; = "/"

.field private static final TAG:Ljava/lang/String; = "nf-rest"

.field protected static final WEBAPI_ENDPOINT_URL:Ljava/lang/String; = "api-global.netflix.com"

.field private static cmsBeaconApiEndPoint:Ljava/lang/String;

.field private static customerEventBeaconApiEndPoint:Ljava/lang/String;

.field private static webApiEndPoint:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    const-string/jumbo v0, "api-global.netflix.com"

    sput-object v0, Lcom/netflix/mediaclient/webapi/HttpClientFactory;->webApiEndPoint:Ljava/lang/String;

    .line 64
    const-string/jumbo v0, "customerevents.netflix.com"

    sput-object v0, Lcom/netflix/mediaclient/webapi/HttpClientFactory;->customerEventBeaconApiEndPoint:Ljava/lang/String;

    .line 65
    const-string/jumbo v0, "ichnaea.netflix.com"

    sput-object v0, Lcom/netflix/mediaclient/webapi/HttpClientFactory;->cmsBeaconApiEndPoint:Ljava/lang/String;

    .line 69
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const-string/jumbo v0, "org.apache.http.wire"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 71
    const-string/jumbo v0, "org.apache.http.headers"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 73
    const-string/jumbo v0, "org.apache.commons.logging.Log"

    const-string/jumbo v1, "org.apache.commons.logging.impl.SimpleLog"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    const-string/jumbo v0, "org.apache.commons.logging.simplelog.showdatetime"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    const-string/jumbo v0, "org.apache.commons.logging.simplelog.log.httpclient.wire"

    const-string/jumbo v1, "debug"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    const-string/jumbo v0, "org.apache.commons.logging.simplelog.log.org.apache.http"

    const-string/jumbo v1, "debug"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    const-string/jumbo v0, "org.apache.commons.logging.simplelog.log.org.apache.http.headers"

    const-string/jumbo v1, "debug"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    const-string/jumbo v0, "log.tag.org.apache.http"

    const-string/jumbo v1, "VERBOSE"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    const-string/jumbo v0, "log.tag.org.apache.http.wire"

    const-string/jumbo v1, "VERBOSE"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    const-string/jumbo v0, "log.tag.org.apache.http.headers"

    const-string/jumbo v1, "VERBOSE"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method public static getCmsBeaconApiEndPoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/netflix/mediaclient/webapi/HttpClientFactory;->cmsBeaconApiEndPoint:Ljava/lang/String;

    return-object v0
.end method

.method public static getCustomerEventBeaconApiEndPoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/netflix/mediaclient/webapi/HttpClientFactory;->customerEventBeaconApiEndPoint:Ljava/lang/String;

    return-object v0
.end method

.method public static getHttpClient(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 7

    .prologue
    const/16 v3, 0x1388

    const/4 v6, 0x1

    .line 107
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 108
    const-string/jumbo v1, "http.protocol.version"

    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 109
    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 110
    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 112
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 113
    new-instance v2, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v2}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    .line 115
    new-instance v0, Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-static {}, Lcom/netflix/mediaclient/webapi/WebApiCommand;->getNetflixIdName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p0}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string/jumbo v3, ".netflix.com"

    invoke-virtual {v0, v3}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 117
    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 119
    invoke-virtual {v3, v6, v6}, Ljava/util/Calendar;->add(II)V

    .line 120
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 121
    invoke-virtual {v0, v3}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setExpiryDate(Ljava/util/Date;)V

    .line 123
    new-instance v4, Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-static {}, Lcom/netflix/mediaclient/webapi/WebApiCommand;->getSecureNetflixIdName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string/jumbo v5, ".netflix.com"

    invoke-virtual {v4, v5}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 125
    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v4, v3}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setExpiryDate(Ljava/util/Date;)V

    .line 127
    invoke-virtual {v4, v6}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setSecure(Z)V

    .line 129
    invoke-interface {v2, v0}, Lorg/apache/http/client/CookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    .line 130
    invoke-interface {v2, v4}, Lorg/apache/http/client/CookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    .line 132
    invoke-interface {v2}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v3

    .line 133
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    const-string/jumbo v0, "nf-rest"

    const-string/jumbo v3, "No cookies"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 145
    return-object v1

    .line 137
    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 138
    const-string/jumbo v4, "nf-rest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Local cookie: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getWebApiEndPoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcom/netflix/mediaclient/webapi/HttpClientFactory;->webApiEndPoint:Ljava/lang/String;

    return-object v0
.end method

.method public static setCmsBeaconApiEndPoint(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 200
    sput-object p0, Lcom/netflix/mediaclient/webapi/HttpClientFactory;->cmsBeaconApiEndPoint:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public static setCustomerEventBeaconApiEndPoint(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 182
    sput-object p0, Lcom/netflix/mediaclient/webapi/HttpClientFactory;->customerEventBeaconApiEndPoint:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public static setWebApiEndPoint(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    sput-object p0, Lcom/netflix/mediaclient/webapi/HttpClientFactory;->webApiEndPoint:Ljava/lang/String;

    .line 164
    return-void
.end method
