.class public final Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingWebClientFactory;
.super Ljava/lang/Object;
.source "AdvertiserIdLoggingWebClientFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final create(Lcom/netflix/mediaclient/service/webclient/WebClient;)Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingWebClient;
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingVolleyWebClient;

    check-cast p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingVolleyWebClient;-><init>(Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;)V

    return-object v0
.end method
