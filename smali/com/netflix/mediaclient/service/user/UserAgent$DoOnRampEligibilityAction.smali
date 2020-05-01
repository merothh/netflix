.class Lcom/netflix/mediaclient/service/user/UserAgent$DoOnRampEligibilityAction;
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
.field action:Lcom/netflix/model/leafs/OnRampEligibility$Action;

.field final synthetic this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

.field private final webClientCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/model/leafs/OnRampEligibility$Action;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V
    .locals 1

    .prologue
    .line 1777
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$DoOnRampEligibilityAction;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 1778
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/service/user/UserAgent$FetchTask;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V

    .line 1787
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$DoOnRampEligibilityAction$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/user/UserAgent$DoOnRampEligibilityAction$1;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent$DoOnRampEligibilityAction;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$DoOnRampEligibilityAction;->webClientCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    .line 1779
    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$DoOnRampEligibilityAction;->action:Lcom/netflix/model/leafs/OnRampEligibility$Action;

    .line 1780
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1784
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$DoOnRampEligibilityAction;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1200(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserWebClient;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$DoOnRampEligibilityAction;->action:Lcom/netflix/model/leafs/OnRampEligibility$Action;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$DoOnRampEligibilityAction;->webClientCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserWebClient;->doOnRampEligibilityAction(Lcom/netflix/model/leafs/OnRampEligibility$Action;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    .line 1785
    return-void
.end method
