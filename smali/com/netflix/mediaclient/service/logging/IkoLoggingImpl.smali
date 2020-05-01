.class public Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;
.super Ljava/lang/Object;
.source "IkoLoggingImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IkoLogging;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_log_iko"


# instance fields
.field private mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

.field private mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

.field private mIkoModeSession:Lcom/netflix/mediaclient/service/logging/iko/IkoModeSession;

.field private mIkoMomentSession:Lcom/netflix/mediaclient/service/logging/iko/IkoMomentSession;

.field private mIkoVideoLoadSession:Lcom/netflix/mediaclient/service/logging/iko/IkoVideoLoadSession;

.field private mIkoVideoPlaybackSession:Lcom/netflix/mediaclient/service/logging/iko/IkoVideoPlaybackSession;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/EventHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    return-void
.end method

.method private handleIkoModeEnded(Landroid/content/Intent;)V
    .locals 5

    const/4 v1, 0x0

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
    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->endIkoModeSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "nf_log_iko"

    const-string/jumbo v4, "Failed JSON"

    invoke-static {v3, v4, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private handleIkoModeStart(Landroid/content/Intent;)V
    .locals 4

    const/4 v1, 0x0

    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->startIkoModeSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleIkoMomentEnded(Landroid/content/Intent;)V
    .locals 7

    const/4 v0, 0x0

    const-string/jumbo v1, "reason"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "error"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    :goto_1
    const-string/jumbo v0, "momentId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "momentType"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "ikoMomentState"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "expectedVideoOffset"

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->endIkoMomentSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v3, "nf_log_iko"

    const-string/jumbo v4, "Failed JSON"

    invoke-static {v3, v4, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v1, v0

    goto :goto_1
.end method

.method private handleIkoMomentStart(Landroid/content/Intent;)V
    .locals 4

    const/4 v1, 0x0

    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->startIkoMomentSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleIkoVideoLoadEnd(Landroid/content/Intent;)V
    .locals 5

    const/4 v1, 0x0

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
    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->endIkoVideoLoadSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "nf_log_iko"

    const-string/jumbo v4, "Failed JSON"

    invoke-static {v3, v4, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private handleIkoVideoLoadStart(Landroid/content/Intent;)V
    .locals 1

    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->startIkoVideoLoadSession(Ljava/lang/String;)V

    return-void
.end method

.method private handleIkoVideoPlaybackEnd(Landroid/content/Intent;)V
    .locals 5

    const/4 v3, -0x1

    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "errorCode"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v0, "errorSubCode"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v0, 0x0

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->endIkoVideoPlaybackSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;II)V

    return-void
.end method

.method private handleIkoVideoPlaybackStart(Landroid/content/Intent;)V
    .locals 1

    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->startIkoVideoPlaybackSession(Ljava/lang/String;)V

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

.method private populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    invoke-virtual {p1, p3}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->setModalView(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized endAllActiveSessions()V
    .locals 7

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->endIkoVideoLoadSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->endIkoVideoPlaybackSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;II)V

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->endIkoModeSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->endIkoMomentSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public endIkoModeSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoModeSession:Lcom/netflix/mediaclient/service/logging/iko/IkoModeSession;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoMode session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoModeSession:Lcom/netflix/mediaclient/service/logging/iko/IkoModeSession;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/iko/IkoModeSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)Lcom/netflix/mediaclient/service/logging/iko/model/IkoModeEndedEvent;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoMode session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoModeSession:Lcom/netflix/mediaclient/service/logging/iko/IkoModeSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/iko/IkoModeSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoModeSession:Lcom/netflix/mediaclient/service/logging/iko/IkoModeSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    const-string/jumbo v1, "nf_log_iko"

    const-string/jumbo v2, "IkoMode session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoModeSession:Lcom/netflix/mediaclient/service/logging/iko/IkoModeSession;

    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoMode session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endIkoMomentSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoMomentSession:Lcom/netflix/mediaclient/service/logging/iko/IkoMomentSession;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoMoment session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoMomentSession:Lcom/netflix/mediaclient/service/logging/iko/IkoMomentSession;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/netflix/mediaclient/service/logging/iko/IkoMomentSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/netflix/mediaclient/service/logging/iko/model/IkoMomentEndedEvent;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoMoment session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoMomentSession:Lcom/netflix/mediaclient/service/logging/iko/IkoMomentSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/iko/IkoMomentSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoMomentSession:Lcom/netflix/mediaclient/service/logging/iko/IkoMomentSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    const-string/jumbo v1, "nf_log_iko"

    const-string/jumbo v2, "IkoMoment session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoMomentSession:Lcom/netflix/mediaclient/service/logging/iko/IkoMomentSession;

    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoMoment session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endIkoVideoLoadSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoVideoLoadSession:Lcom/netflix/mediaclient/service/logging/iko/IkoVideoLoadSession;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoVideoLoad session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoVideoLoadSession:Lcom/netflix/mediaclient/service/logging/iko/IkoVideoLoadSession;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/iko/IkoVideoLoadSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)Lcom/netflix/mediaclient/service/logging/iko/model/IkoVideoLoadEndedEvent;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoVideoLoad session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoVideoLoadSession:Lcom/netflix/mediaclient/service/logging/iko/IkoVideoLoadSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    const-string/jumbo v1, "nf_log_iko"

    const-string/jumbo v2, "IkoVideoLoad session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoVideoLoadSession:Lcom/netflix/mediaclient/service/logging/iko/IkoVideoLoadSession;

    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoVideoLoad session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endIkoVideoPlaybackSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;II)V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoVideoPlaybackSession:Lcom/netflix/mediaclient/service/logging/iko/IkoVideoPlaybackSession;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoVideoPlaybackSession session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoVideoPlaybackSession:Lcom/netflix/mediaclient/service/logging/iko/IkoVideoPlaybackSession;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/iko/IkoVideoPlaybackSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;II)Lcom/netflix/mediaclient/service/logging/iko/model/IkoVideoPlaybackEndedEvent;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoVideoPlaybackSession session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoVideoPlaybackSession:Lcom/netflix/mediaclient/service/logging/iko/IkoVideoPlaybackSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    const-string/jumbo v1, "nf_log_iko"

    const-string/jumbo v2, "IkoVideoPlaybackSession session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoVideoPlaybackSession:Lcom/netflix/mediaclient/service/logging/iko/IkoVideoPlaybackSession;

    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoVideoPlaybackSession session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleIntent(Landroid/content/Intent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_IKO_VIDEO_LOAD_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v1, "nf_log_iko"

    const-string/jumbo v2, "VIDEO_LOAD_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->handleIkoVideoLoadStart(Landroid/content/Intent;)V

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_IKO_VIDEO_LOAD_END"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v1, "nf_log_iko"

    const-string/jumbo v2, "VIDEO_LOAD_END"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->handleIkoVideoLoadEnd(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_IKO_VIDEO_PLAYBACK_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v1, "nf_log_iko"

    const-string/jumbo v2, "VIDEO_PLAYBACK_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->handleIkoVideoPlaybackStart(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_IKO_VIDEO_PLAYBACK_END"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v1, "nf_log_iko"

    const-string/jumbo v2, "VIDEO_PLAYBACK_END"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->handleIkoVideoPlaybackEnd(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_IKO_MODE_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v1, "nf_log_iko"

    const-string/jumbo v2, "IKO_MODE_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->handleIkoModeStart(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_IKO_MODE_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v1, "nf_log_iko"

    const-string/jumbo v2, "IKO_MODE_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->handleIkoModeEnded(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_IKO_MOMENT_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v1, "nf_log_iko"

    const-string/jumbo v2, "IKO_MOMENT_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->handleIkoMomentStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_IKO_MOMENT_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v1, "nf_log_iko"

    const-string/jumbo v2, "IKO_MOMENT_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->handleIkoMomentEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "nf_log_iko"

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

    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    return-void
.end method

.method public startIkoModeSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoModeSession:Lcom/netflix/mediaclient/service/logging/iko/IkoModeSession;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoMode session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoMode session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/service/logging/iko/IkoModeSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/iko/IkoModeSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoModeSession:Lcom/netflix/mediaclient/service/logging/iko/IkoModeSession;

    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoMode session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startIkoMomentSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoMomentSession:Lcom/netflix/mediaclient/service/logging/iko/IkoMomentSession;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoMoment session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoMoment session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/service/logging/iko/IkoMomentSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/iko/IkoMomentSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoMomentSession:Lcom/netflix/mediaclient/service/logging/iko/IkoMomentSession;

    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoMoment session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startIkoVideoLoadSession(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoVideoLoadSession:Lcom/netflix/mediaclient/service/logging/iko/IkoVideoLoadSession;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoVideoLoad session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoVideoLoad session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/service/logging/iko/IkoVideoLoadSession;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/logging/iko/IkoVideoLoadSession;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoVideoLoadSession:Lcom/netflix/mediaclient/service/logging/iko/IkoVideoLoadSession;

    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoVideoLoad session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startIkoVideoPlaybackSession(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoVideoPlaybackSession:Lcom/netflix/mediaclient/service/logging/iko/IkoVideoPlaybackSession;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoVideoPlayback session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoVideoPlayback session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/service/logging/iko/IkoVideoPlaybackSession;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/logging/iko/IkoVideoPlaybackSession;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->mIkoVideoPlaybackSession:Lcom/netflix/mediaclient/service/logging/iko/IkoVideoPlaybackSession;

    const-string/jumbo v0, "nf_log_iko"

    const-string/jumbo v1, "IkoVideoPlayback session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
