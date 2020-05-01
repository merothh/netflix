.class Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener$1;
.super Ljava/lang/Object;
.source "DownloadButton.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener$1;->this$1:Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOfflineDownloadPinAndAgeVerified(ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V
    .locals 4

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "download_button"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOfflineDownloadPinAndAgeVerified verified="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener$1;->this$1:Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->access$400(Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener$1;->this$1:Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->access$400(Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/common/PlayContextProvider;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener$1;->this$1:Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->access$400(Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/common/PlayContextProvider;

    check-cast v0, Lcom/netflix/mediaclient/ui/common/PlayContextProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/common/PlayContextProvider;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener$1;->this$1:Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->access$400(Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener$1;->this$1:Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->access$500(Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener$1;->this$1:Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->access$600(Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->requestOfflineViewing(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->EMPTY_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    goto :goto_1
.end method

.method public onPlayVerified(ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V
    .locals 0

    return-void
.end method
