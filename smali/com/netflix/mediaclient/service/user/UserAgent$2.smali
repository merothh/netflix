.class Lcom/netflix/mediaclient/service/user/UserAgent$2;
.super Ljava/lang/Object;
.source "UserAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

.field final synthetic val$res:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 729
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$2;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$2;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 732
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$2;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$800(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$2;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$800(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$2;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;->onLoginComplete(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 734
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$2;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$802(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;

    .line 736
    :cond_0
    return-void
.end method
