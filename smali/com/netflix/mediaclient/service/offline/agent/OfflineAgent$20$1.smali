.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$20$1;
.super Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;
.source "OfflineAgent.java"


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$20;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$20;)V
    .locals 0

    .prologue
    .line 1595
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$20$1;->this$1:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$20;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowDetailsAndSeasonsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1598
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;->onShowDetailsAndSeasonsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1600
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1601
    invoke-static {p3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$4100(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1606
    :goto_0
    return-void

    .line 1605
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$20$1;->this$1:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$20;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$20;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$1500(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lio/realm/Realm;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$20$1;->this$1:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$20;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$20;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$4600(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$20$1;->this$1:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$20;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$20;->val$curProfile:Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, p2, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->insertInRealm(Lio/realm/Realm;Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0
.end method
