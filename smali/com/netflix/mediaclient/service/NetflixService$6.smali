.class Lcom/netflix/mediaclient/service/NetflixService$6;
.super Landroid/content/BroadcastReceiver;
.source "NetflixService.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/NetflixService;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/NetflixService;)V
    .locals 0

    .prologue
    .line 1571
    iput-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$6;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getMdxAgentVideoAsset()Lcom/netflix/mediaclient/servicemgr/Asset;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1620
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService$6;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/NetflixService;->access$2500(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getVideoDetail()Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService$6;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/NetflixService;->access$2500(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getVideoDetail()Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    .line 1621
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1622
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->EMPTY_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/netflix/mediaclient/servicemgr/Asset;->create(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;Z)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    .line 1624
    :cond_0
    return-object v0

    :cond_1
    move-object v1, v0

    .line 1620
    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1574
    .line 1575
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1576
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.MDXUPDATE_PLAYBACKEND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1578
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1579
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v2, "mdx exit, stop service in 28800000ms"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$6;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    const-wide/32 v2, 0x1b77400

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/service/NetflixService;->access$2400(Lcom/netflix/mediaclient/service/NetflixService;J)V

    .line 1583
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService$6;->getMdxAgentVideoAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    .line 1584
    if-eqz v0, :cond_6

    .line 1585
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->isPinProtected()Z

    move-result v0

    .line 1587
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->getInstance()Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->registerPlayEvent(Z)V

    .line 1589
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v2, "Refreshing CW for MDXUPDATE_PLAYBACKEND..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$6;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->refreshCw(Z)V

    .line 1617
    :cond_1
    :goto_1
    return-void

    .line 1591
    :cond_2
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.MDXUPDATE_PLAYBACKSTART"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1592
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$6;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$2500(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$6;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$2500(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->hasActiveSession()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1593
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "start mdx notification"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$6;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$2600(Lcom/netflix/mediaclient/service/NetflixService;)V

    .line 1596
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService$6;->getMdxAgentVideoAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    .line 1597
    if-eqz v0, :cond_1

    .line 1598
    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "refreshing episodes data on play start"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService$6;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->refreshEpisodeData(Lcom/netflix/mediaclient/servicemgr/Asset;)V

    goto :goto_1

    .line 1602
    :cond_3
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "false MDXUPDATE_PLAYBACKSTART"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1604
    :cond_4
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.MDXUPDATE_STATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1605
    const-string/jumbo v0, "time"

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1606
    const-string/jumbo v2, "NetflixService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "on MDX state update - received updated mdx position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService$6;->getMdxAgentVideoAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v2

    .line 1609
    if-eqz v2, :cond_5

    .line 1610
    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->setPlaybackBookmark(I)V

    .line 1611
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "updating cached video position"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$6;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->updateCachedVideoPosition(Lcom/netflix/mediaclient/servicemgr/Asset;)V

    .line 1613
    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/Asset;->isPinProtected()Z

    move-result v1

    .line 1615
    :cond_5
    invoke-static {}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->getInstance()Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->registerPlayEvent(Z)V

    goto/16 :goto_1

    :cond_6
    move v0, v1

    goto/16 :goto_0
.end method
