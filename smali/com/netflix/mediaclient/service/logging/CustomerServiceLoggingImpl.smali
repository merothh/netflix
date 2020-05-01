.class Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;
.super Ljava/lang/Object;
.source "CustomerServiceLoggingImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_log_cs"


# instance fields
.field private mCustomerSupportCallSession:Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;

.field private mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

.field private mHelpRequestSession:Lcom/netflix/mediaclient/service/logging/customerSupport/HelpRequestSession;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/EventHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    return-void
.end method


# virtual methods
.method public callConnected(Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;->mCustomerSupportCallSession:Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_log_cs"

    const-string/jumbo v1, "Call session exist, call connected"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;->mCustomerSupportCallSession:Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->callConnected(Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "nf_log_cs"

    const-string/jumbo v1, "Call session does NOT exist, and call connected API is called..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public callQualityChanged(Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;->mCustomerSupportCallSession:Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_log_cs"

    const-string/jumbo v1, "Call session exist, change its quality"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;->mCustomerSupportCallSession:Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->setCallQuality(Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "nf_log_cs"

    const-string/jumbo v1, "Call session does NOT exist, and change call quality API is called..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public createBackToDialScreenEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_log_cs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Back to dial screen event using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/BackToDialScreenEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/customerSupport/model/BackToDialScreenEvent;-><init>(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    const-string/jumbo v0, "nf_log_cs"

    const-string/jumbo v1, "Back to dial screen event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createDialScreenDismissedEvent(Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_log_cs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Dial screen dismissed event caused by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/DialScreenDismissedEvent;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/logging/customerSupport/model/DialScreenDismissedEvent;-><init>(Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    const-string/jumbo v0, "nf_log_cs"

    const-string/jumbo v1, "Dial screen dismissed event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized endAllActiveSessions()V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->canceledByUserAfterConnected:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;->endCustomerSupportCallSession(Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;->endHelpRequestSession(Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public endCustomerSupportCallSession(Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;->mCustomerSupportCallSession:Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_log_cs"

    const-string/jumbo v1, "Call session end started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;->mCustomerSupportCallSession:Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->createCustomerSupportCallSessionEndedEvent(Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;->mCustomerSupportCallSession:Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;->mCustomerSupportCallSession:Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;

    const-string/jumbo v0, "nf_log_cs"

    const-string/jumbo v1, "Call session end done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public endHelpRequestSession(Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;->mHelpRequestSession:Lcom/netflix/mediaclient/service/logging/customerSupport/HelpRequestSession;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_log_cs"

    const-string/jumbo v1, "Help session end started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;->mHelpRequestSession:Lcom/netflix/mediaclient/service/logging/customerSupport/HelpRequestSession;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/logging/customerSupport/HelpRequestSession;->createHelpRequestSessionEndedEvent(Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)Lcom/netflix/mediaclient/service/logging/customerSupport/model/HelpRequestSessionEndedEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;->mHelpRequestSession:Lcom/netflix/mediaclient/service/logging/customerSupport/HelpRequestSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;->mHelpRequestSession:Lcom/netflix/mediaclient/service/logging/customerSupport/HelpRequestSession;

    const-string/jumbo v0, "nf_log_cs"

    const-string/jumbo v1, "help session end done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public handleIntent(Landroid/content/Intent;)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_CS_HELP_SESSION_START"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v1, "nf_log_cs"

    const-string/jumbo v2, "HELP_SESSION_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "entry"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;->startHelpRequestSession(Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;)V

    move v0, v3

    :goto_0
    return v0

    :cond_1
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_CS_HELP_SESSION_ENDED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v1, "nf_log_cs"

    const-string/jumbo v2, "HELP_SESSION_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "action"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    move-result-object v2

    const-string/jumbo v1, "reason"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v4

    :try_start_0
    const-string/jumbo v1, "error"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/logging/client/model/Error;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1, v4, v0}, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;->endHelpRequestSession(Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v5, "nf_log_cs"

    const-string/jumbo v6, "Failure to create Error"

    invoke-static {v5, v6, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_CS_CALL_SESSION_START"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v0, "nf_log_cs"

    const-string/jumbo v2, "CALL_SESSION_START"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "uuid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "displayed"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;->startCustomerSupportCallSession(Ljava/lang/String;Z)V

    move v0, v3

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_CS_CALL_SESSION_ENDED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v1, "nf_log_cs"

    const-string/jumbo v2, "CALL_SESSION_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "reason"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v2

    const-string/jumbo v1, "terminationReason"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    move-result-object v4

    :try_start_1
    const-string/jumbo v1, "error"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/logging/client/model/Error;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_2
    invoke-virtual {p0, v4, v2, v0}, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;->endCustomerSupportCallSession(Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    move v0, v3

    goto/16 :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v5, "nf_log_cs"

    const-string/jumbo v6, "Failure to create Error"

    invoke-static {v5, v6, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_4
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_CS_CALL_CONNECTED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v0, "nf_log_cs"

    const-string/jumbo v1, "CALL_CONNECTED"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "call_quality"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;->callConnected(Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;)V

    move v0, v3

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_CS_CALL_SESSION_QUALITY_CHANGED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v0, "nf_log_cs"

    const-string/jumbo v1, "CALL_SESSION_QUALITY_CHANGED"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "call_quality"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;->callQualityChanged(Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;)V

    move v0, v3

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_CS_CALL_UI_EXIT"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string/jumbo v1, "nf_log_cs"

    const-string/jumbo v2, "CALL_UI_EXIT"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "action"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    move-result-object v0

    :cond_7
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;->createDialScreenDismissedEvent(Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;)V

    move v0, v3

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_CS_CALL_UI_BACK_TO"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string/jumbo v1, "nf_log_cs"

    const-string/jumbo v2, "CALL_UI_BACK_TO"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "source"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    :goto_3
    const-string/jumbo v2, "using"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;

    move-result-object v2

    :goto_4
    const-string/jumbo v4, "orientation"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {v4}, Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    move-result-object v0

    :cond_9
    invoke-virtual {p0, v1, v0, v2}, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;->createBackToDialScreenEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;)V

    move v0, v3

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "nf_log_cs"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "We do not support action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move v0, v1

    goto/16 :goto_0

    :cond_c
    move-object v2, v0

    goto :goto_4

    :cond_d
    move-object v1, v0

    goto :goto_3
.end method

.method public startCustomerSupportCallSession(Ljava/lang/String;Z)V
    .locals 2

    const-string/jumbo v0, "nf_log_cs"

    const-string/jumbo v1, "Call session start started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;->mCustomerSupportCallSession:Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_log_cs"

    const-string/jumbo v1, "Call session existed before! It should not happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;->mCustomerSupportCallSession:Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;->mCustomerSupportCallSession:Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    const-string/jumbo v0, "nf_log_cs"

    const-string/jumbo v1, "Call session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startHelpRequestSession(Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;)V
    .locals 2

    const-string/jumbo v0, "nf_log_cs"

    const-string/jumbo v1, "Help session start started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;->mHelpRequestSession:Lcom/netflix/mediaclient/service/logging/customerSupport/HelpRequestSession;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_log_cs"

    const-string/jumbo v1, "Help session existed before! It should not happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/logging/customerSupport/HelpRequestSession;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/logging/customerSupport/HelpRequestSession;-><init>(Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;->mHelpRequestSession:Lcom/netflix/mediaclient/service/logging/customerSupport/HelpRequestSession;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;->mHelpRequestSession:Lcom/netflix/mediaclient/service/logging/customerSupport/HelpRequestSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    const-string/jumbo v0, "nf_log_cs"

    const-string/jumbo v1, "Help session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
