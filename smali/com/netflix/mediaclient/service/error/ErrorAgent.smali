.class public final Lcom/netflix/mediaclient/service/error/ErrorAgent;
.super Lcom/netflix/mediaclient/service/ServiceAgent;
.source "ErrorAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IErrorHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "ErrorAgent"


# instance fields
.field private mCurrentError:Lcom/netflix/mediaclient/service/error/ErrorDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;-><init>()V

    return-void
.end method

.method private displayDialog(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.ui.error.ACTION_DISPLAY_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private handleBackgroundTask(Lcom/netflix/mediaclient/service/error/ErrorDescriptor;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/error/ErrorDescriptor;->getBackgroundTask()Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "ErrorAgent"

    const-string/jumbo v1, "Execute background task!!!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/error/ErrorDescriptor;->getBackgroundTask()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public addError(Lcom/netflix/mediaclient/service/error/ErrorDescriptor;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/error/ErrorAgent;->handleBackgroundTask(Lcom/netflix/mediaclient/service/error/ErrorDescriptor;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/error/ErrorAgent;->mCurrentError:Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/netflix/mediaclient/service/error/ErrorAgent;->mCurrentError:Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/error/ErrorDescriptor;->getPriority()I

    move-result v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/error/ErrorDescriptor;->getPriority()I

    move-result v2

    if-lt v1, v2, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ErrorAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Current error has higher priority "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/error/ErrorAgent;->mCurrentError:Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/error/ErrorDescriptor;->getPriority()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " than just added "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/error/ErrorDescriptor;->getPriority()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "ErrorAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Older error has lower priority "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/error/ErrorAgent;->mCurrentError:Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/error/ErrorDescriptor;->getPriority()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " than just added "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/error/ErrorDescriptor;->getPriority()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Report!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-object p1, p0, Lcom/netflix/mediaclient/service/error/ErrorAgent;->mCurrentError:Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/error/ErrorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/error/ErrorAgent;->displayDialog(Landroid/content/Context;)V

    :goto_1
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v0, "ErrorAgent"

    const-string/jumbo v1, "No previous errors, display this one"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/netflix/mediaclient/service/error/ErrorAgent;->mCurrentError:Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/error/ErrorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/error/ErrorAgent;->displayDialog(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/netflix/mediaclient/service/error/ErrorAgent;->mCurrentError:Lcom/netflix/mediaclient/service/error/ErrorDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected doInit()V
    .locals 2

    const-string/jumbo v0, "ErrorAgent"

    const-string/jumbo v1, "ErrorAgent::init done "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/error/ErrorAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    const-string/jumbo v0, "ErrorAgent"

    const-string/jumbo v1, "ErrorAgent::init done "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getCurrentError()Lcom/netflix/mediaclient/service/error/ErrorDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/ErrorAgent;->mCurrentError:Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    return-object v0
.end method

.method public declared-synchronized setErrorAccepted(Lcom/netflix/mediaclient/service/error/ErrorDescriptor;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/ErrorAgent;->mCurrentError:Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    if-ne v0, p1, :cond_0

    const-string/jumbo v0, "ErrorAgent"

    const-string/jumbo v1, "Current error is reported to user by UI!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/error/ErrorAgent;->mCurrentError:Lcom/netflix/mediaclient/service/error/ErrorDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "ErrorAgent"

    const-string/jumbo v1, "Current error is not one that UI just handled!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
