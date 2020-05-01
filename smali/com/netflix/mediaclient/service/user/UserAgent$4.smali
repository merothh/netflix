.class Lcom/netflix/mediaclient/service/user/UserAgent$4;
.super Ljava/lang/Object;
.source "UserAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

.field final synthetic val$user:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/webclient/model/leafs/User;)V
    .locals 0

    .prologue
    .line 1013
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$4;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$4;->val$user:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$4;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1200(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserWebClient;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$4;->val$user:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/user/UserWebClient;->refreshUserMessage(Lcom/netflix/mediaclient/service/webclient/model/leafs/User;)V

    .line 1017
    return-void
.end method
