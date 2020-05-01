.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$19;
.super Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;
.source "OfflineAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

.field final synthetic val$curProfile:Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

.field final synthetic val$playableId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1561
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$19;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$19;->val$curProfile:Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$19;->val$playableId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1564
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;->onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1566
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1567
    invoke-static {p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$4100(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1574
    :goto_0
    return-void

    .line 1571
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$19;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$1500(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lio/realm/Realm;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$19;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$4200(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$19;->val$curProfile:Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;->insertProfileIfNeeded(Lio/realm/Realm;Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)V

    .line 1572
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$19;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$1500(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lio/realm/Realm;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$19;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$4300(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$19;->val$curProfile:Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->insertInRealm(Lio/realm/Realm;Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Ljava/lang/String;)V

    .line 1573
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$19;->val$playableId:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$19;->val$curProfile:Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->updateBookmarkIfNewer(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Ljava/lang/String;)V

    goto :goto_0
.end method
