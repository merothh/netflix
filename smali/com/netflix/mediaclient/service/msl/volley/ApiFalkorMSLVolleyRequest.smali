.class public abstract Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;
.super Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;
.source "ApiFalkorMSLVolleyRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;-><init>(Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;)V

    .line 22
    return-void
.end method


# virtual methods
.method public getMSLUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "/android/4.12.2/api"

    return-object v0
.end method

.method protected getParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    invoke-super {p0}, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;->getParams()Ljava/util/Map;

    move-result-object v1

    .line 53
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;->getMSLClient()Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->getUrlProvider()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;->mResponsePathFormat:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->getApiRequestParams(Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;)Ljava/util/Map;

    move-result-object v0

    .line 54
    if-nez v1, :cond_0

    .line 60
    :goto_0
    return-object v0

    .line 57
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object v0, v1

    goto :goto_0
.end method

.method protected injectUrl()V
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;->getMSLClient()Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->getApiUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;->initUrl(Ljava/lang/String;)V

    .line 40
    return-void
.end method
