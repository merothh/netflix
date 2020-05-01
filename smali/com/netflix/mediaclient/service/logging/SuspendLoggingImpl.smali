.class public final Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;
.super Ljava/lang/Object;
.source "SuspendLoggingImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/SuspendLogging;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_log_suspend"


# instance fields
.field private mBackgroundingSession:Lcom/netflix/mediaclient/service/logging/suspend/BackgroundingSession;

.field private mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

.field private mForegroundSession:Lcom/netflix/mediaclient/service/logging/suspend/ForegroundSession;

.field private mResumingSession:Lcom/netflix/mediaclient/service/logging/suspend/ResumingSession;

.field private mSessionBackground:Lcom/netflix/mediaclient/service/logging/suspend/BackgroundSession;

.field private mSuspendSession:Lcom/netflix/mediaclient/service/logging/suspend/SuspendSession;

.field private mUnfocusedSession:Lcom/netflix/mediaclient/service/logging/suspend/UnfocusedSession;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/EventHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    return-void
.end method

.method private getDeepLink(Landroid/content/Intent;)Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "source"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComUtils;->getParameters(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "source"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->createDeepLink(Ljava/util/Map;)Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized endAllActiveSessions()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->endBackgroundingSession()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->endBackgroundSession()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->endResumingSession()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->endForegroundSession()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->endSuspendSession()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->endUnfocusedSession()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public endBackgroundSession()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mSessionBackground:Lcom/netflix/mediaclient/service/logging/suspend/BackgroundSession;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Background session end started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mSessionBackground:Lcom/netflix/mediaclient/service/logging/suspend/BackgroundSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mSessionBackground:Lcom/netflix/mediaclient/service/logging/suspend/BackgroundSession;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/suspend/BackgroundSession;->createEndedEvent()Lcom/netflix/mediaclient/service/logging/suspend/model/BackgroundSessionEndedEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mSessionBackground:Lcom/netflix/mediaclient/service/logging/suspend/BackgroundSession;

    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Background session end done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public endBackgroundingSession()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mBackgroundingSession:Lcom/netflix/mediaclient/service/logging/suspend/BackgroundingSession;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Backgrounding session end started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mBackgroundingSession:Lcom/netflix/mediaclient/service/logging/suspend/BackgroundingSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mBackgroundingSession:Lcom/netflix/mediaclient/service/logging/suspend/BackgroundingSession;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/suspend/BackgroundingSession;->createEndedEvent()Lcom/netflix/mediaclient/service/logging/suspend/model/BackgroundingSessionEndedEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mBackgroundingSession:Lcom/netflix/mediaclient/service/logging/suspend/BackgroundingSession;

    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Backgrounding session end done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public endForegroundSession()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mForegroundSession:Lcom/netflix/mediaclient/service/logging/suspend/ForegroundSession;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Foreground session end started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mForegroundSession:Lcom/netflix/mediaclient/service/logging/suspend/ForegroundSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mForegroundSession:Lcom/netflix/mediaclient/service/logging/suspend/ForegroundSession;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/suspend/ForegroundSession;->createEndedEvent()Lcom/netflix/mediaclient/service/logging/suspend/model/ForegroundSessionEndedEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mForegroundSession:Lcom/netflix/mediaclient/service/logging/suspend/ForegroundSession;

    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Foreground session end done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public endResumingSession()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mResumingSession:Lcom/netflix/mediaclient/service/logging/suspend/ResumingSession;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Resuming session end started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mResumingSession:Lcom/netflix/mediaclient/service/logging/suspend/ResumingSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mResumingSession:Lcom/netflix/mediaclient/service/logging/suspend/ResumingSession;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/suspend/ResumingSession;->createEndedEvent()Lcom/netflix/mediaclient/service/logging/suspend/model/ResumingSessionEndedEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mResumingSession:Lcom/netflix/mediaclient/service/logging/suspend/ResumingSession;

    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Resuming session end done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public endSuspendSession()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mSuspendSession:Lcom/netflix/mediaclient/service/logging/suspend/SuspendSession;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Suspend session end started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mSuspendSession:Lcom/netflix/mediaclient/service/logging/suspend/SuspendSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mSuspendSession:Lcom/netflix/mediaclient/service/logging/suspend/SuspendSession;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/suspend/SuspendSession;->createEndedEvent()Lcom/netflix/mediaclient/service/logging/suspend/model/SuspendSessionEndedEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mSuspendSession:Lcom/netflix/mediaclient/service/logging/suspend/SuspendSession;

    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Suspend session end done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public endUnfocusedSession()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mUnfocusedSession:Lcom/netflix/mediaclient/service/logging/suspend/UnfocusedSession;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Unfocused session end started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mUnfocusedSession:Lcom/netflix/mediaclient/service/logging/suspend/UnfocusedSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mUnfocusedSession:Lcom/netflix/mediaclient/service/logging/suspend/UnfocusedSession;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/suspend/UnfocusedSession;->createEndedEvent()Lcom/netflix/mediaclient/service/logging/suspend/model/UnfocusedSessionEndedEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mUnfocusedSession:Lcom/netflix/mediaclient/service/logging/suspend/UnfocusedSession;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/suspend/UnfocusedSession;->getUnfocusedSessionStartedEvent()Lcom/netflix/mediaclient/service/logging/suspend/model/UnfocusedSessionStartedEvent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mUnfocusedSession:Lcom/netflix/mediaclient/service/logging/suspend/UnfocusedSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/suspend/UnfocusedSession;->getUnfocusedSessionStartedEvent()Lcom/netflix/mediaclient/service/logging/suspend/model/UnfocusedSessionStartedEvent;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mUnfocusedSession:Lcom/netflix/mediaclient/service/logging/suspend/UnfocusedSession;

    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Unfocused session end done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public startBackgroundSession()V
    .locals 2

    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Background session start started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mSessionBackground:Lcom/netflix/mediaclient/service/logging/suspend/BackgroundSession;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Background session existed before! It should not happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/logging/suspend/BackgroundSession;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/suspend/BackgroundSession;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mSessionBackground:Lcom/netflix/mediaclient/service/logging/suspend/BackgroundSession;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mSessionBackground:Lcom/netflix/mediaclient/service/logging/suspend/BackgroundSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mSessionBackground:Lcom/netflix/mediaclient/service/logging/suspend/BackgroundSession;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/suspend/BackgroundSession;->createStartEvent()Lcom/netflix/mediaclient/service/logging/suspend/model/BackgroundSessionStartedEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Background session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startBackgroundingSession()V
    .locals 2

    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Backgrounding session start started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mBackgroundingSession:Lcom/netflix/mediaclient/service/logging/suspend/BackgroundingSession;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Backgrounding session existed before! It should not happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/logging/suspend/BackgroundingSession;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/suspend/BackgroundingSession;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mBackgroundingSession:Lcom/netflix/mediaclient/service/logging/suspend/BackgroundingSession;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mBackgroundingSession:Lcom/netflix/mediaclient/service/logging/suspend/BackgroundingSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Background session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startForegroundSession(Landroid/content/Intent;)V
    .locals 3

    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Foreground session start started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->getDeepLink(Landroid/content/Intent;)Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mForegroundSession:Lcom/netflix/mediaclient/service/logging/suspend/ForegroundSession;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "nf_log_suspend"

    const-string/jumbo v2, "Foreground session existed before"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Not deeplink, ignore."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "nf_log_suspend"

    const-string/jumbo v2, "Deeplink found, end existing foreground session..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->endForegroundSession()V

    :cond_1
    new-instance v1, Lcom/netflix/mediaclient/service/logging/suspend/ForegroundSession;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/logging/suspend/ForegroundSession;-><init>()V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mForegroundSession:Lcom/netflix/mediaclient/service/logging/suspend/ForegroundSession;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mForegroundSession:Lcom/netflix/mediaclient/service/logging/suspend/ForegroundSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mForegroundSession:Lcom/netflix/mediaclient/service/logging/suspend/ForegroundSession;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/service/logging/suspend/ForegroundSession;->createStartEvent(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;)Lcom/netflix/mediaclient/service/logging/suspend/model/ForegroundSessionStartedEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Foreground session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startResumingSession()V
    .locals 2

    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Resuming session start started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mResumingSession:Lcom/netflix/mediaclient/service/logging/suspend/ResumingSession;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Resuming session existed before! It should not happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/logging/suspend/ResumingSession;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/suspend/ResumingSession;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mResumingSession:Lcom/netflix/mediaclient/service/logging/suspend/ResumingSession;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mResumingSession:Lcom/netflix/mediaclient/service/logging/suspend/ResumingSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Resuming session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startSuspendSession()V
    .locals 2

    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Suspend session start started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mSuspendSession:Lcom/netflix/mediaclient/service/logging/suspend/SuspendSession;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Suspend session existed before! It should not happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/logging/suspend/SuspendSession;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/suspend/SuspendSession;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mSuspendSession:Lcom/netflix/mediaclient/service/logging/suspend/SuspendSession;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mSuspendSession:Lcom/netflix/mediaclient/service/logging/suspend/SuspendSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mSuspendSession:Lcom/netflix/mediaclient/service/logging/suspend/SuspendSession;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/suspend/SuspendSession;->createStartEvent()Lcom/netflix/mediaclient/service/logging/suspend/model/SuspendSessionStartedEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Suspend session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startUnfocusedSession()V
    .locals 2

    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Unfocused session start started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mUnfocusedSession:Lcom/netflix/mediaclient/service/logging/suspend/UnfocusedSession;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Unfocused session existed before! It should not happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/logging/suspend/UnfocusedSession;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/suspend/UnfocusedSession;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mUnfocusedSession:Lcom/netflix/mediaclient/service/logging/suspend/UnfocusedSession;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mUnfocusedSession:Lcom/netflix/mediaclient/service/logging/suspend/UnfocusedSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->mUnfocusedSession:Lcom/netflix/mediaclient/service/logging/suspend/UnfocusedSession;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/suspend/UnfocusedSession;->createStartEvent()V

    const-string/jumbo v0, "nf_log_suspend"

    const-string/jumbo v1, "Unfocused session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
