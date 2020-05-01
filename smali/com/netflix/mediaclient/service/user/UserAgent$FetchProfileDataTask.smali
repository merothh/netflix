.class Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask;
.super Ljava/lang/Object;
.source "UserAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field profileId:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

.field private final webClientCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask$1;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask;->webClientCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask;->profileId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1200(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserWebClient;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask;->profileId:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask;->webClientCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserWebClient;->fetchProfileData(Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    return-void
.end method
