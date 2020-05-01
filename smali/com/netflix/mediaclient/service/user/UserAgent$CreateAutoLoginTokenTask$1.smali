.class Lcom/netflix/mediaclient/service/user/UserAgent$CreateAutoLoginTokenTask$1;
.super Lcom/netflix/mediaclient/service/user/SimpleUserAgentWebCallback;
.source "UserAgent.java"


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/user/UserAgent$CreateAutoLoginTokenTask;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent$CreateAutoLoginTokenTask;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$CreateAutoLoginTokenTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$CreateAutoLoginTokenTask;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/SimpleUserAgentWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoLoginTokenCreated(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$CreateAutoLoginTokenTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$CreateAutoLoginTokenTask;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/user/UserAgent$CreateAutoLoginTokenTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/user/UserAgent$CreateAutoLoginTokenTask$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgent$CreateAutoLoginTokenTask$1$1;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent$CreateAutoLoginTokenTask$1;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
