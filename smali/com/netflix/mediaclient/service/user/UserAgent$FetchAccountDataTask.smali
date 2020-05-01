.class Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask;
.super Ljava/lang/Object;
.source "UserAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

.field private final webClientCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
    .locals 1

    .prologue
    .line 935
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 936
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 944
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask$1;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask;->webClientCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    .line 937
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 941
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1200(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserWebClient;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAccountDataTask;->webClientCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/user/UserWebClient;->fetchAccountData(Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    .line 942
    return-void
.end method
