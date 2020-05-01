.class public Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;
.super Lcom/android/volley/VolleyError;
.source "StatusCodeError.java"


# instance fields
.field private final statusCode:Lcom/netflix/mediaclient/StatusCode;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/StatusCode;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/volley/VolleyError;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;->statusCode:Lcom/netflix/mediaclient/StatusCode;

    return-void
.end method


# virtual methods
.method public getStatusCode()Lcom/netflix/mediaclient/StatusCode;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;->statusCode:Lcom/netflix/mediaclient/StatusCode;

    return-object v0
.end method
