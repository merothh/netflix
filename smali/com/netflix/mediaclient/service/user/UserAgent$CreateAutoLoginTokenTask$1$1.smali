.class Lcom/netflix/mediaclient/service/user/UserAgent$CreateAutoLoginTokenTask$1$1;
.super Ljava/lang/Object;
.source "UserAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/netflix/mediaclient/service/user/UserAgent$CreateAutoLoginTokenTask$1;

.field final synthetic val$res:Lcom/netflix/mediaclient/android/app/Status;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent$CreateAutoLoginTokenTask$1;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$CreateAutoLoginTokenTask$1$1;->this$2:Lcom/netflix/mediaclient/service/user/UserAgent$CreateAutoLoginTokenTask$1;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$CreateAutoLoginTokenTask$1$1;->val$token:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/user/UserAgent$CreateAutoLoginTokenTask$1$1;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$CreateAutoLoginTokenTask$1$1;->this$2:Lcom/netflix/mediaclient/service/user/UserAgent$CreateAutoLoginTokenTask$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/user/UserAgent$CreateAutoLoginTokenTask$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$CreateAutoLoginTokenTask;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent$CreateAutoLoginTokenTask;->getCallback()Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$CreateAutoLoginTokenTask$1$1;->val$token:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$CreateAutoLoginTokenTask$1$1;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;->onAutoLoginTokenCreated(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
