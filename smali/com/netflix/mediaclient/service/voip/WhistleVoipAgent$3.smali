.class Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$3;
.super Ljava/lang/Object;
.source "WhistleVoipAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)V
    .locals 0

    .prologue
    .line 919
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 923
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 924
    invoke-static {}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->access$800()V

    .line 926
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->access$500(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 927
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "No dial request, no need to dial"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :goto_0
    return-void

    .line 931
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->access$700(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 932
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->access$500(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 933
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Call is already in progress! Terminate it first!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 937
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->access$900(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)I

    move-result v0

    .line 938
    if-gez v0, :cond_2

    .line 939
    const-string/jumbo v1, "nf_voip"

    const-string/jumbo v2, "No lines available!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->callFailed(ILjava/lang/String;I)V

    .line 941
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->access$1000(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/voip/VoipErrorDialogDescriptorFactory;->getHandlerForNoLineAvailable(Landroid/content/Context;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IErrorHandler;->addError(Lcom/netflix/mediaclient/service/error/ErrorDescriptor;)Z

    goto :goto_0

    .line 944
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->access$000(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)Lcom/vailsys/whistleengine/WhistleEngine;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->access$1100(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)Lcom/netflix/mediaclient/util/l10n/UserLocale;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/voip/VoipUtils;->getCustomerServiceNumber(Lcom/netflix/mediaclient/util/l10n/UserLocale;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    invoke-static {v4}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->access$1200(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/service/voip/VoipUtils;->createDialExtra(Landroid/content/Context;Ljava/lang/String;)Lcom/vailsys/whistleengine/DialExtra;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/vailsys/whistleengine/WhistleEngine;->dial(ILjava/lang/String;Lcom/vailsys/whistleengine/DialExtra;)I

    move-result v0

    .line 945
    if-lez v0, :cond_3

    .line 946
    const-string/jumbo v1, "nf_voip"

    const-string/jumbo v2, "Whistle engine was able to start dial"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    new-instance v2, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;

    invoke-direct {v2, v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;-><init>(I)V

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->access$702(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;)Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;

    .line 954
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->access$1400(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)Lcom/netflix/mediaclient/service/voip/PowerLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->callStarted()V

    .line 955
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->access$1500(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)V

    .line 956
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.netflix.mediaclient.ui.cs.ACTION_CALL_STARTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 957
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->access$1700(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)Lcom/netflix/mediaclient/service/voip/CallNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->access$1600(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/voip/CallNotificationManager;->showCallingNotification(Lcom/netflix/mediaclient/service/NetflixService;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 949
    :cond_3
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Whistle engine was unable to start dial!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->access$1300(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$3;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->cancelAction:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/voip/VoipErrorDialogDescriptorFactory;->getHandlerForCallFailed(Landroid/content/Context;Ljava/lang/Runnable;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IErrorHandler;->addError(Lcom/netflix/mediaclient/service/error/ErrorDescriptor;)Z

    goto/16 :goto_0
.end method
