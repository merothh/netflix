.class public Lcom/netflix/mediaclient/webapi/RefreshNetflixCredentials;
.super Lcom/netflix/mediaclient/webapi/NoResponseWebApiCommand;
.source "RefreshNetflixCredentials.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;

    invoke-direct {v0, p2, p3}, Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/webapi/NoResponseWebApiCommand;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;Lcom/netflix/mediaclient/webapi/CommonRequestParameters;)V

    return-void
.end method


# virtual methods
.method public getCommandPath()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "/users/current"

    return-object v0
.end method
