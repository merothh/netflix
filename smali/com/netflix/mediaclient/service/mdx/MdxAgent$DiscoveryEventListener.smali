.class Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;
.super Ljava/lang/Object;
.source "MdxAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/javabridge/ui/EventListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public received(Lcom/netflix/mediaclient/event/UIEvent;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/DeviceFoundEvent;

    if-eqz v1, :cond_4

    check-cast p1, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/DeviceFoundEvent;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/DeviceFoundEvent;->getRemoteDevice()Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;

    move-result-object v0

    iget-object v0, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->uuid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/DeviceFoundEvent;->getRemoteDevice()Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;

    move-result-object v1

    iget-object v1, v1, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->dialUuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1900(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1900(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2000(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/TargetManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/netflix/mediaclient/service/mdx/TargetManager;->targetFound(Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;)V

    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->targetList()V

    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/DeviceFoundEvent;->getRemoteDevice()Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;

    move-result-object v2

    iget-object v2, v2, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->serviceType:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2100(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getCustomerEventLogging()Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;

    move-result-object v3

    const-string/jumbo v4, "found"

    invoke-interface {v3, v4, v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;->logMdxTarget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1300(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void

    :cond_4
    instance-of v1, p1, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/DeviceLostEvent;

    if-eqz v1, :cond_a

    check-cast p1, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/DeviceLostEvent;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/DeviceLostEvent;->getDevices()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_9

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v5}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1900(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v4}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/TargetManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/netflix/mediaclient/service/mdx/TargetManager;->isTargetHaveContext(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_5
    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v4}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1300(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v4}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v4}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    move-result-object v4

    iget-object v5, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v5}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xc8

    const-string/jumbo v7, "device lost"

    invoke-virtual {v4, v5, v6, v7}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->error(Ljava/lang/String;ILjava/lang/String;)V

    :cond_6
    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v4}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1800(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v4}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;

    move-result-object v4

    const-string/jumbo v5, "current target device lost"

    invoke-virtual {v4, v5}, Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;->logDebug(Ljava/lang/String;)V

    :cond_7
    :goto_2
    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v4}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2200(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v4

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getCustomerEventLogging()Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;

    move-result-object v4

    const-string/jumbo v5, "lost"

    invoke-interface {v4, v5, v3, v8, v8}, Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;->logMdxTarget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string/jumbo v4, "nf_mdx_MdxAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "MdxAgent: mTargetRestartingList has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", ignore device lost"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->targetList()V

    goto/16 :goto_0

    :cond_a
    instance-of v1, p1, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/RemoteDeviceReadyEvent;

    if-eqz v1, :cond_3

    check-cast p1, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/RemoteDeviceReadyEvent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/RemoteDeviceReadyEvent;->getUuid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1900(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/RemoteDeviceReadyEvent;->getLaunchStatus()I

    move-result v1

    if-ne v1, v4, :cond_b

    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "MdxAgent: RemoteDeviceReadyEvent, app\'s launched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/TargetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/netflix/mediaclient/service/mdx/TargetManager;->targetLaunched(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;

    move-result-object v0

    const-string/jumbo v1, "current target device launched"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v1, "nf_mdx_MdxAgent"

    const-string/jumbo v2, "MdxAgent: RemoteDeviceReadyEvent, app\'s launch failed"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/TargetManager;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/service/mdx/TargetManager;->targetLaunched(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/TargetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/TargetManager;->isCurrentSessionEnded()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/TargetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetManager;->targetGone(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2000(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    if-eqz v1, :cond_d

    iget-object v0, v1, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->friendlyName:Ljava/lang/String;

    :cond_d
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x6a

    invoke-virtual {v1, v2, v3, v0}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->error(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$DiscoveryEventListener;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;

    move-result-object v0

    const-string/jumbo v1, "current target device fails to launched"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
