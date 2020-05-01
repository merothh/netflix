.class Lcom/netflix/mediaclient/service/user/UserAgent$CreateAutoLoginTokenTask;
.super Lcom/netflix/mediaclient/service/user/UserAgent$FetchTask;
.source "UserAgent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/service/user/UserAgent$FetchTask",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final expirationInMs:J

.field final synthetic this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

.field private final webClientCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;JLcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V
    .locals 2

    .prologue
    .line 1977
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$CreateAutoLoginTokenTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 1978
    invoke-direct {p0, p4}, Lcom/netflix/mediaclient/service/user/UserAgent$FetchTask;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V

    .line 1987
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$CreateAutoLoginTokenTask$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/user/UserAgent$CreateAutoLoginTokenTask$1;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent$CreateAutoLoginTokenTask;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$CreateAutoLoginTokenTask;->webClientCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    .line 1979
    iput-wide p2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$CreateAutoLoginTokenTask;->expirationInMs:J

    .line 1980
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1984
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$CreateAutoLoginTokenTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1200(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserWebClient;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$CreateAutoLoginTokenTask;->expirationInMs:J

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$CreateAutoLoginTokenTask;->webClientCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    invoke-interface {v0, v2, v3, v1}, Lcom/netflix/mediaclient/service/user/UserWebClient;->createAutoLoginToken(JLcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    .line 1985
    return-void
.end method
