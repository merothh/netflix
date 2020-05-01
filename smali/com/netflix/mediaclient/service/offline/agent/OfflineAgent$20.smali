.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$20;
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
    .line 1577
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$20;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$20;->val$curProfile:Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$20;->val$playableId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEpisodeDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1580
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;->onEpisodeDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1582
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1583
    invoke-static {p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$4100(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1609
    :cond_0
    :goto_0
    return-void

    .line 1587
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$20;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$1500(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lio/realm/Realm;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$20;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$4400(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$20;->val$curProfile:Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;->insertProfileIfNeeded(Lio/realm/Realm;Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)V

    .line 1588
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$20;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$1500(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lio/realm/Realm;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$20;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$4500(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$20;->val$curProfile:Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->insertInRealm(Lio/realm/Realm;Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Ljava/lang/String;)V

    .line 1589
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$20;->val$playableId:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$20;->val$curProfile:Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->updateBookmarkIfNewer(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Ljava/lang/String;)V

    .line 1592
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getShowId()Ljava/lang/String;

    move-result-object v1

    .line 1594
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$20;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$1500(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lio/realm/Realm;

    move-result-object v0

    const-class v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-static {v0, v2, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->idNotExists(Lio/realm/Realm;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1595
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$20;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->getBrowseAgent()Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$20;->val$playableId:Ljava/lang/String;

    new-instance v5, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$20$1;

    invoke-direct {v5, p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$20$1;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$20;)V

    move v4, v3

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;->fetchShowDetailsAndSeasons(Ljava/lang/String;Ljava/lang/String;ZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    goto :goto_0
.end method
