.class final Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;
.super Ljava/lang/Object;
.source "SignInLoggingImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/SignInLogging;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_log_signin"


# instance fields
.field private mCredentialRetrievalSession:Lcom/netflix/mediaclient/service/logging/signin/CredentialRetrievalSession;

.field private mCredentialStoreSession:Lcom/netflix/mediaclient/service/logging/signin/CredentialStoreSession;

.field private mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

.field private mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

.field private mSignInRequestSession:Lcom/netflix/mediaclient/service/logging/signin/SignInRequestSession;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/EventHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    return-void
.end method

.method private handleCredentialRetrievalEnd(Landroid/content/Intent;)V
    .locals 5

    const/4 v1, 0x0

    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v2, "CREDENTIAL_RETRIEVAL_ENDED"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->endCredentialRetrieval(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "nf_log_signin"

    const-string/jumbo v4, "Failed JSON"

    invoke-static {v3, v4, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private handleCredentialRetrievalStart(Landroid/content/Intent;)V
    .locals 3

    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v1, "CREDENTIAL_RETRIEVAL_START"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "credSavedService"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->startCredentialRetrieval(Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;)V

    return-void
.end method

.method private handleCredentialStoreEnd(Landroid/content/Intent;)V
    .locals 5

    const/4 v1, 0x0

    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v2, "CREDENTIAL_SAVE_ENDED"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->endCredentialStore(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "nf_log_signin"

    const-string/jumbo v4, "Failed JSON"

    invoke-static {v3, v4, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private handleCredentialStoreStart(Landroid/content/Intent;)V
    .locals 3

    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v1, "CREDENTIAL_SAVE_START"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "credSavedService"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->startCredentialStore(Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;)V

    return-void
.end method

.method private handleSignInEnd(Landroid/content/Intent;)V
    .locals 7

    const/4 v1, 0x0

    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v2, "SIGNIN_ENDED"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "type"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "credSavedState"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v2

    :goto_1
    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v3}, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    move-result-object v3

    :goto_2
    invoke-static {v4}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->endSignInRequest(Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v5, "nf_log_signin"

    const-string/jumbo v6, "Failed JSON"

    invoke-static {v5, v6, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v3, v1

    goto :goto_2

    :cond_2
    move-object v2, v1

    goto :goto_1
.end method

.method private handleSignInStart(Landroid/content/Intent;)V
    .locals 3

    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v1, "SIGNIN_START"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->startSignInRequest(Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;)V

    return-void
.end method

.method private populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized endAllActiveSessions()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->endSignInRequest(Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;)V

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->endCredentialStore(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->endCredentialRetrieval(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized endCredentialRetrieval(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mCredentialRetrievalSession:Lcom/netflix/mediaclient/service/logging/signin/CredentialRetrievalSession;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mCredentialRetrievalSession:Lcom/netflix/mediaclient/service/logging/signin/CredentialRetrievalSession;

    if-nez v0, :cond_0

    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v1, "CredentialService retrieval session does NOT exist!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v1, "nf_log_signin"

    const-string/jumbo v2, "CredentialService retrieval session ended"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/signin/CredentialRetrievalSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)Lcom/netflix/mediaclient/service/logging/signin/model/CredentialRetrievalSessionEnded;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v2, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v2, "CredentialService retrieval session end event posting..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v1, "CredentialService retrieval session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized endCredentialStore(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mCredentialStoreSession:Lcom/netflix/mediaclient/service/logging/signin/CredentialStoreSession;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mCredentialStoreSession:Lcom/netflix/mediaclient/service/logging/signin/CredentialStoreSession;

    if-nez v0, :cond_0

    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v1, "CredentialService store session does NOT exist!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v1, "nf_log_signin"

    const-string/jumbo v2, "CredentialService store session ended"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/signin/CredentialStoreSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)Lcom/netflix/mediaclient/service/logging/signin/model/CredentialStoreSessionEnded;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v2, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v2, "CredentialService store session end event posting..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v1, "CredentialService store session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized endSignInRequest(Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mSignInRequestSession:Lcom/netflix/mediaclient/service/logging/signin/SignInRequestSession;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mSignInRequestSession:Lcom/netflix/mediaclient/service/logging/signin/SignInRequestSession;

    if-nez v0, :cond_0

    const-string/jumbo v0, "nf_log_signin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SignInRequest session for sign-in type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " does NOT exist!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v1, "nf_log_signin"

    const-string/jumbo v2, "SignInRequest session ended"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p2, p3, p4}, Lcom/netflix/mediaclient/service/logging/signin/SignInRequestSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;)Lcom/netflix/mediaclient/service/logging/signin/model/SignInRequestSessionEnded;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v2, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v2, "SignInRequest session end event posting..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v1, "SignInRequest session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleIntent(Landroid/content/Intent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_SIGNIN_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->handleSignInStart(Landroid/content/Intent;)V

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_SIGNIN_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->handleSignInEnd(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_SIGNIN_CREDENTIAL_RETRIEVAL_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->handleCredentialRetrievalStart(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_SIGNIN_CREDENTIAL_RETRIEVAL_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->handleCredentialRetrievalEnd(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_SIGNIN_CREDENTIAL_SAVE_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->handleCredentialStoreStart(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_SIGNIN_CREDENTIAL_SAVE_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->handleCredentialStoreEnd(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "nf_log_signin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "We do not support action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized startCredentialRetrieval(Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mCredentialRetrievalSession:Lcom/netflix/mediaclient/service/logging/signin/CredentialRetrievalSession;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v1, "Credential retrieval session already exist!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v1, "Credential retrieval session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/service/logging/signin/CredentialRetrievalSession;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/logging/signin/CredentialRetrievalSession;-><init>(Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mCredentialRetrievalSession:Lcom/netflix/mediaclient/service/logging/signin/CredentialRetrievalSession;

    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v1, "Credential retrieval session done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startCredentialStore(Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mCredentialStoreSession:Lcom/netflix/mediaclient/service/logging/signin/CredentialStoreSession;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v1, "Credential store session already exist!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v1, "Credential store session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/service/logging/signin/CredentialStoreSession;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/logging/signin/CredentialStoreSession;-><init>(Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mCredentialStoreSession:Lcom/netflix/mediaclient/service/logging/signin/CredentialStoreSession;

    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v1, "Credential store session done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startSignInRequest(Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mSignInRequestSession:Lcom/netflix/mediaclient/service/logging/signin/SignInRequestSession;

    if-nez v0, :cond_0

    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v1, "SignInRequest session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/service/logging/signin/SignInRequestSession;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/logging/signin/SignInRequestSession;-><init>(Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mSignInRequestSession:Lcom/netflix/mediaclient/service/logging/signin/SignInRequestSession;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->mSignInRequestSession:Lcom/netflix/mediaclient/service/logging/signin/SignInRequestSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v1, "SignInRequest session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "nf_log_signin"

    const-string/jumbo v1, "SignInRequest session already exist!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
