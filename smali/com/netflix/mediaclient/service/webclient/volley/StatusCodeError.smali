.class public Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;
.super Lcom/android/volley/VolleyError;
.source "StatusCodeError.java"


# instance fields
.field private final statusCode:Lcom/netflix/mediaclient/StatusCode;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/StatusCode;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/volley/VolleyError;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;->statusCode:Lcom/netflix/mediaclient/StatusCode;

    .line 13
    return-void
.end method


# virtual methods
.method public getStatusCode()Lcom/netflix/mediaclient/StatusCode;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;->statusCode:Lcom/netflix/mediaclient/StatusCode;

    return-object v0
.end method
