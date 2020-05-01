.class public Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;
.super Lcom/android/volley/VolleyError;
.source ""


# instance fields
.field private final a:Lcom/netflix/mediaclient/StatusCode;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/StatusCode;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/android/volley/VolleyError;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;->a:Lcom/netflix/mediaclient/StatusCode;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p2}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;->a:Lcom/netflix/mediaclient/StatusCode;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V
    .locals 0

    .line 20
    invoke-direct {p0, p2}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    .line 21
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;->a:Lcom/netflix/mediaclient/StatusCode;

    return-void
.end method


# virtual methods
.method public b()Lcom/netflix/mediaclient/StatusCode;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;->a:Lcom/netflix/mediaclient/StatusCode;

    return-object v0
.end method
