.class public Lcom/netflix/mediaclient/service/user/UserWebClientFactory;
.super Ljava/lang/Object;
.source "UserWebClientFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final create(Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/service/webclient/WebClient;)Lcom/netflix/mediaclient/service/user/UserWebClient;
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/service/user/volley/UserVolleyWebClient;

    check-cast p1, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/user/volley/UserVolleyWebClient;-><init>(Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;)V

    return-object v0
.end method
