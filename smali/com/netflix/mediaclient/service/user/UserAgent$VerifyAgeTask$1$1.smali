.class Lcom/netflix/mediaclient/service/user/UserAgent$VerifyAgeTask$1$1;
.super Ljava/lang/Object;
.source "UserAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/netflix/mediaclient/service/user/UserAgent$VerifyAgeTask$1;

.field final synthetic val$res:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent$VerifyAgeTask$1;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 1841
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyAgeTask$1$1;->this$2:Lcom/netflix/mediaclient/service/user/UserAgent$VerifyAgeTask$1;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyAgeTask$1$1;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1847
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyAgeTask$1$1;->this$2:Lcom/netflix/mediaclient/service/user/UserAgent$VerifyAgeTask$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyAgeTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$VerifyAgeTask;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyAgeTask;->getCallback()Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyAgeTask$1$1;->this$2:Lcom/netflix/mediaclient/service/user/UserAgent$VerifyAgeTask$1;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyAgeTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$VerifyAgeTask;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyAgeTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1400(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->isAgeVerified()Z

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyAgeTask$1$1;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;->onVerified(ZLcom/netflix/mediaclient/android/app/Status;)V

    .line 1848
    return-void
.end method
