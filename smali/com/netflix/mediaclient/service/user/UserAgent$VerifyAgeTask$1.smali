.class Lcom/netflix/mediaclient/service/user/UserAgent$VerifyAgeTask$1;
.super Lcom/netflix/mediaclient/service/user/SimpleUserAgentWebCallback;
.source "UserAgent.java"


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/user/UserAgent$VerifyAgeTask;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent$VerifyAgeTask;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyAgeTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$VerifyAgeTask;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/SimpleUserAgentWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/User;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyAgeTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$VerifyAgeTask;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyAgeTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1700(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/webclient/model/leafs/User;)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyAgeTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$VerifyAgeTask;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyAgeTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyAgeTask$1$1;

    invoke-direct {v1, p0, p2}, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyAgeTask$1$1;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent$VerifyAgeTask$1;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
