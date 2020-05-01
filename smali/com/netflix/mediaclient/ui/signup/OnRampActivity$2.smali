.class Lcom/netflix/mediaclient/ui/signup/OnRampActivity$2;
.super Ljava/lang/Object;
.source "OnRampActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/signup/OnRampActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/signup/OnRampActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity$2;->this$0:Lcom/netflix/mediaclient/ui/signup/OnRampActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OnRampActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ServiceManager ready: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/32 v0, 0x36ee80

    new-instance v2, Lcom/netflix/mediaclient/ui/signup/OnRampActivity$2$1;

    invoke-direct {v2, p0, p1}, Lcom/netflix/mediaclient/ui/signup/OnRampActivity$2$1;-><init>(Lcom/netflix/mediaclient/ui/signup/OnRampActivity$2;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->createAutoLoginToken(JLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/model/leafs/OnRampEligibility$Action;->RECORD:Lcom/netflix/model/leafs/OnRampEligibility$Action;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->doOnRampEligibilityAction(Lcom/netflix/model/leafs/OnRampEligibility$Action;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)V

    :cond_1
    return-void
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string/jumbo v0, "OnRampActivity"

    const-string/jumbo v1, "NetflixService is NOT available!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity$2;->this$0:Lcom/netflix/mediaclient/ui/signup/OnRampActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/signup/OnRampActivity;->finish()V

    return-void
.end method
