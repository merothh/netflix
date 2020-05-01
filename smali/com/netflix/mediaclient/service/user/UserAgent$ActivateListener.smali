.class Lcom/netflix/mediaclient/service/user/UserAgent$ActivateListener;
.super Ljava/lang/Object;
.source "UserAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/javabridge/ui/EventListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/user/UserAgent;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$ActivateListener;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgent$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent$ActivateListener;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;)V

    return-void
.end method


# virtual methods
.method public received(Lcom/netflix/mediaclient/event/UIEvent;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "Received a activate event "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->failed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->getCookies()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$ActivateListener;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/netflix/mediaclient/service/user/UserAgent$ActivateListener;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/user/UserAgent;->getNetflixIdName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1000(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$ActivateListener;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/netflix/mediaclient/service/user/UserAgent$ActivateListener;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/user/UserAgent;->getSecureNetflixIdName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1000(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$ActivateListener;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1100(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserAgentStateManager;

    move-result-object v2

    invoke-virtual {v2, v5, v1, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->accountOrProfileActivated(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->isActionId()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "nf_service_useragent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received a activate event with ActionID error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->getActionID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->getReasonCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  Received msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {p1}, Lcom/netflix/mediaclient/service/user/BlacklistedWidevinePluginErrorDescriptor;->canHandle(Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "Action ID 3 and reason code 15003: blacklisted Widevine L3 plugin, report an error"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$ActivateListener;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/user/BlacklistedWidevinePluginErrorDescriptor;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$ActivateListener;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/service/user/BlacklistedWidevinePluginErrorDescriptor;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IErrorHandler;->addError(Lcom/netflix/mediaclient/service/error/ErrorDescriptor;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$ActivateListener;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1100(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserAgentStateManager;

    move-result-object v0

    invoke-virtual {v0, v4, v3, v3}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->accountOrProfileActivated(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StatusUtils;->toActionIdResult(Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;)Lcom/netflix/mediaclient/android/app/NetflixStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$ActivateListener;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$500(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/android/app/Status;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$ActivateListener;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v0

    invoke-static {v1, v0, v3}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents;->signalProfileSelectionResult(Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->isNetworkError()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "Received a activate event with Network error"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StatusUtils;->toActionIdResult(Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;)Lcom/netflix/mediaclient/android/app/NetflixStatus;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->setDisplayMessage(Z)V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->setMessage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$ActivateListener;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1100(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserAgentStateManager;

    move-result-object v1

    invoke-virtual {v1, v4, v3, v3}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->accountOrProfileActivated(ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$ActivateListener;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$500(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/android/app/Status;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$ActivateListener;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NETWORK_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v1

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents;->signalProfileSelectionResult(Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "Received a unexpected Activate event"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
