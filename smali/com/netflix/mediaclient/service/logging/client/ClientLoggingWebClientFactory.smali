.class public Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebClientFactory;
.super Ljava/lang/Object;
.source "ClientLoggingWebClientFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final create(Lcom/netflix/mediaclient/service/webclient/WebClient;)Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebClient;
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingVolleyWebClient;

    check-cast p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingVolleyWebClient;-><init>(Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;)V

    return-object v0
.end method
