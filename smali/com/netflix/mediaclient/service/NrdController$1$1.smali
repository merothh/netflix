.class Lcom/netflix/mediaclient/service/NrdController$1$1;
.super Ljava/lang/Object;
.source "NrdController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/NrdController$1;

.field final synthetic val$el:Lcom/netflix/mediaclient/javabridge/ui/EventListener;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/NrdController$1;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/netflix/mediaclient/service/NrdController$1$1;->this$1:Lcom/netflix/mediaclient/service/NrdController$1;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/NrdController$1$1;->val$el:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 148
    const-string/jumbo v0, "nf_nrdcontroller"

    const-string/jumbo v1, "Bridge is initialized"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController$1$1;->this$1:Lcom/netflix/mediaclient/service/NrdController$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/NrdController$1;->this$0:Lcom/netflix/mediaclient/service/NrdController;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NrdController;->access$100(Lcom/netflix/mediaclient/service/NrdController;)Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v0

    const-string/jumbo v1, "init"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/NrdController$1$1;->val$el:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 150
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController$1$1;->this$1:Lcom/netflix/mediaclient/service/NrdController$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/NrdController$1;->this$0:Lcom/netflix/mediaclient/service/NrdController;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NrdController;->access$100(Lcom/netflix/mediaclient/service/NrdController;)Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->getDevice()Lcom/netflix/mediaclient/javabridge/ui/Device;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NrdController$1$1;->this$1:Lcom/netflix/mediaclient/service/NrdController$1;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/NrdController$1;->this$0:Lcom/netflix/mediaclient/service/NrdController;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NrdController;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/Device;->setUIVersion(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController$1$1;->this$1:Lcom/netflix/mediaclient/service/NrdController$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/NrdController$1;->this$0:Lcom/netflix/mediaclient/service/NrdController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController$1$1;->this$1:Lcom/netflix/mediaclient/service/NrdController$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/NrdController$1;->this$0:Lcom/netflix/mediaclient/service/NrdController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getPlaybackConfiguration()Lcom/netflix/mediaclient/service/configuration/PlaybackConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController$1$1;->this$1:Lcom/netflix/mediaclient/service/NrdController$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/NrdController$1;->this$0:Lcom/netflix/mediaclient/service/NrdController;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NrdController;->access$100(Lcom/netflix/mediaclient/service/NrdController;)Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->getMedia()Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NrdController$1$1;->this$1:Lcom/netflix/mediaclient/service/NrdController$1;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/NrdController$1;->this$0:Lcom/netflix/mediaclient/service/NrdController;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NrdController;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getPreviewContentConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->setPreviewContentConfig(Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController$1$1;->this$1:Lcom/netflix/mediaclient/service/NrdController$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/NrdController$1;->this$0:Lcom/netflix/mediaclient/service/NrdController;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NrdController;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 158
    return-void
.end method
