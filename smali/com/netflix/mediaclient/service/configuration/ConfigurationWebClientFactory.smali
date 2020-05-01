.class public Lcom/netflix/mediaclient/service/configuration/ConfigurationWebClientFactory;
.super Ljava/lang/Object;
.source "ConfigurationWebClientFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final create(Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/service/webclient/WebClient;)Lcom/netflix/mediaclient/service/configuration/ConfigurationWebClient;
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationVolleyWebClient;

    check-cast p1, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationVolleyWebClient;-><init>(Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;)V

    return-object v0
.end method
