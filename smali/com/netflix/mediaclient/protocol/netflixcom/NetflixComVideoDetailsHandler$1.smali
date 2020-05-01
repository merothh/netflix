.class Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComVideoDetailsHandler$1;
.super Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
.source "NetflixComVideoDetailsHandler.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComVideoDetailsHandler;

.field final synthetic val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic val$trackId:Ljava/lang/String;

.field final synthetic val$videoId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComVideoDetailsHandler;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComVideoDetailsHandler$1;->this$0:Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComVideoDetailsHandler;

    iput-object p2, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComVideoDetailsHandler$1;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p3, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComVideoDetailsHandler$1;->val$videoId:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComVideoDetailsHandler$1;->val$trackId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSummaryFetched(Lcom/netflix/model/leafs/Video$Summary;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 6

    .prologue
    const/16 v4, 0x3d

    .line 67
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 69
    invoke-virtual {p1}, Lcom/netflix/model/leafs/Video$Summary;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/Video$Summary;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eq v0, v1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComVideoDetailsHandler$1;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComVideoDetailsHandler;->HANDLER_DETAILS_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComVideoDetailsHandler$1;->val$videoId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComUtils;->launchBrowser(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 90
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComVideoDetailsHandler$1;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->reportDelayedResponseHandled(Landroid/app/Activity;)V

    .line 91
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComVideoDetailsHandler$1;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComVideoDetailsHandler$1;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComVideoDetailsHandler$1;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getCustomerEventLogging()Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    const-string/jumbo v2, "trkid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComVideoDetailsHandler$1;->val$trackId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    const-string/jumbo v2, "movieid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComVideoDetailsHandler$1;->val$videoId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getCustomerEventLogging()Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;->reportMdpFromDeepLinking(Ljava/lang/String;)V

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComVideoDetailsHandler$1;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComVideoDetailsHandler$1;->val$trackId:Ljava/lang/String;

    .line 84
    invoke-static {v1}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->getPlayContext(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v2

    iget-object v1, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComVideoDetailsHandler$1;->this$0:Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComVideoDetailsHandler;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComVideoDetailsHandler;->getAction()Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    move-result-object v3

    iget-object v1, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComVideoDetailsHandler$1;->this$0:Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComVideoDetailsHandler;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComVideoDetailsHandler;->getActionToken()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "DeepLink"

    move-object v1, p1

    .line 83
    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->show(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_2
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SPY-7518 - got error trying to fetch video summary for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComVideoDetailsHandler$1;->val$videoId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
