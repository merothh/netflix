.class public interface abstract Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;
.super Ljava/lang/Object;
.source "ApiEndpointRegistry.java"

# interfaces
.implements Lcom/netflix/msl/client/NetflixUrlProvider;


# virtual methods
.method public abstract getApiRequestParams(Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getApiUrlFull(Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;)Ljava/lang/String;
.end method

.method public abstract getClientLoggingUrlFull()Ljava/lang/String;
.end method

.method public abstract getConfigUrlFull()Ljava/lang/String;
.end method

.method public abstract getPresentationTrackingUrlFull()Ljava/lang/String;
.end method

.method public abstract updateApiEndpointHost(Ljava/lang/String;)V
.end method
