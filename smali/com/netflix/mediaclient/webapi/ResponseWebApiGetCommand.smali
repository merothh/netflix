.class public abstract Lcom/netflix/mediaclient/webapi/ResponseWebApiGetCommand;
.super Lcom/netflix/mediaclient/webapi/WebApiGetCommand;
.source "ResponseWebApiGetCommand.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;Lcom/netflix/mediaclient/webapi/CommonRequestParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/webapi/WebApiGetCommand;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;Lcom/netflix/mediaclient/webapi/CommonRequestParameters;)V

    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/webapi/ResponseWebApiGetCommand;->doExecute()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
