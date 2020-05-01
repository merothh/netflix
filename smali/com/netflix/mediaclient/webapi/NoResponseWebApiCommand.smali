.class public abstract Lcom/netflix/mediaclient/webapi/NoResponseWebApiCommand;
.super Lcom/netflix/mediaclient/webapi/WebApiGetCommand;
.source "NoResponseWebApiCommand.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;Lcom/netflix/mediaclient/webapi/CommonRequestParameters;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/webapi/WebApiGetCommand;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;Lcom/netflix/mediaclient/webapi/CommonRequestParameters;)V

    .line 31
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 0

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/netflix/mediaclient/webapi/NoResponseWebApiCommand;->doExecute()Ljava/lang/String;

    .line 40
    return-void
.end method
