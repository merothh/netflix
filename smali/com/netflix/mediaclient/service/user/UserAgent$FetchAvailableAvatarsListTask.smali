.class Lcom/netflix/mediaclient/service/user/UserAgent$FetchAvailableAvatarsListTask;
.super Ljava/lang/Object;
.source "UserAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field mCallback:Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;

.field final synthetic this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

.field private final webClientCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAvailableAvatarsListTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAvailableAvatarsListTask$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAvailableAvatarsListTask$1;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent$FetchAvailableAvatarsListTask;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAvailableAvatarsListTask;->webClientCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAvailableAvatarsListTask;->mCallback:Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAvailableAvatarsListTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1200(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserWebClient;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAvailableAvatarsListTask;->webClientCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/user/UserWebClient;->fetchAvailableAvatarsList(Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    return-void
.end method
