.class Lcom/netflix/mediaclient/ui/home/HomeActivity$5;
.super Lcom/netflix/mediaclient/android/activity/NetflixActivity$ServiceManagerRunnable;
.source "HomeActivity.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$5;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ServiceManagerRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 2

    .prologue
    .line 422
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isOfflineFeatureAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->getTitleCount(Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)I

    move-result v0

    if-lez v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$5;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getTutorialHelper()Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$5;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->showTutorial(Lcom/netflix/mediaclient/ui/offline/TutorialHelper$Tutorialable;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$5;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$700(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V

    .line 429
    return-void
.end method
