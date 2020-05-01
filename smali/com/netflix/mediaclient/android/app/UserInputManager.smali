.class public Lcom/netflix/mediaclient/android/app/UserInputManager;
.super Ljava/lang/Object;
.source "UserInputManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_input"

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mActivitiesCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mActivitiesVisibleCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mCachedIntent:Landroid/content/Intent;

.field private final mLastUserInteraction:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/android/app/ApplicationStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mScheduler:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/android/app/UserInputManager$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/UserInputManager$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/android/app/UserInputManager;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mLastUserInteraction:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mListeners:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mActivitiesCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mActivitiesVisibleCount:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v0, Lcom/netflix/mediaclient/android/app/UserInputManager;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/android/app/UserInputManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method private declared-synchronized isSuspendLoggingReady()Z
    .locals 6

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_input"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSuspendLoggingReady: count"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/app/ApplicationStateListener;

    const-string/jumbo v3, "nf_input"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isSuspendLoggingReady: listener "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, v0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "nf_input"

    const-string/jumbo v1, "Logger ready!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private notifyOthersOfLastUserInteraction()V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->getTimeSinceLastUserInteraction()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->lastUserInteractionTime(J)V

    return-void
.end method

.method private postOnBackground(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->isApplicationInForeground()Z

    move-result v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_input"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Foreground "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_input"

    const-string/jumbo v1, "Our app is still in foreground!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "nf_input"

    const-string/jumbo v1, "Our app is in background now"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/netflix/mediaclient/android/app/UserInputManager$5;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/app/UserInputManager$5;-><init>(Lcom/netflix/mediaclient/android/app/UserInputManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private postOnFocusGain(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->isApplicationInForeground()Z

    move-result v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_input"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Foreground "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", visible "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mActivitiesVisibleCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mActivitiesVisibleCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_1

    const-string/jumbo v0, "nf_input"

    const-string/jumbo v1, "Our app UI was not in focus!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/netflix/mediaclient/android/app/UserInputManager$7;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/app/UserInputManager$7;-><init>(Lcom/netflix/mediaclient/android/app/UserInputManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "nf_input"

    const-string/jumbo v1, "Our app UI had focus before!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private postOnFocusLost(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->isApplicationInForeground()Z

    move-result v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_input"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Foreground "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", visible "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mActivitiesVisibleCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mActivitiesVisibleCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_1

    const-string/jumbo v0, "nf_input"

    const-string/jumbo v1, "Our app UI still has focus!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "nf_input"

    const-string/jumbo v1, "Our app UI lost focus"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/netflix/mediaclient/android/app/UserInputManager$6;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/app/UserInputManager$6;-><init>(Lcom/netflix/mediaclient/android/app/UserInputManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private declared-synchronized postOnForeground(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_input"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "F Foreground "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p3, :cond_3

    if-nez p2, :cond_2

    const-string/jumbo v0, "nf_input"

    const-string/jumbo v1, "Our app is in foreground already and we do not have a deep link"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    const-string/jumbo v0, "nf_input"

    const-string/jumbo v1, "Our app is in foreground already, deep link most likely"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->isSuspendLoggingReady()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "nf_input"

    const-string/jumbo v1, "We are initialized, report..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/netflix/mediaclient/android/app/UserInputManager$4;

    invoke-direct {v1, p0, p2}, Lcom/netflix/mediaclient/android/app/UserInputManager$4;-><init>(Lcom/netflix/mediaclient/android/app/UserInputManager;Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    const-string/jumbo v0, "nf_input"

    const-string/jumbo v1, "Our app was in background"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_1

    const-string/jumbo v0, "nf_input"

    const-string/jumbo v1, "Logger is not ready, cold start, save intent"

    invoke-static {v0, v1, p2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    iput-object p2, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mCachedIntent:Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private postUiExit(I)V
    .locals 3

    if-nez p1, :cond_1

    const-string/jumbo v0, "nf_input"

    const-string/jumbo v1, "UI is  gone"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/netflix/mediaclient/android/app/UserInputManager$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/app/UserInputManager$3;-><init>(Lcom/netflix/mediaclient/android/app/UserInputManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_input"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Activity destroyed, count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private postUiStart(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string/jumbo v0, "nf_input"

    const-string/jumbo v1, "UI may just started, only one activity"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/netflix/mediaclient/android/app/UserInputManager$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/app/UserInputManager$2;-><init>(Lcom/netflix/mediaclient/android/app/UserInputManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_input"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "New activity, count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/netflix/mediaclient/android/app/ApplicationStateListener;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    const-string/jumbo v0, "nf_input"

    const-string/jumbo v1, "Listener already exist"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public checkState()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->notifyOthersOfLastUserInteraction()V

    return-void
.end method

.method public declared-synchronized getAndClearCachedIntent()Landroid/content/Intent;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mCachedIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mCachedIntent:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNumberOfActivities()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mActivitiesCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getTimeSinceLastUserInteraction()J
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mLastUserInteraction:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isApplicationBackground()Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->isApplicationInForeground()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isApplicationInForeground()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mActivitiesVisibleCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_input"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityCreated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mActivitiesCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->postUiStart(I)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_input"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityDestroyed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mActivitiesCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->postUiExit(I)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_input"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityPaused "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    instance-of v0, p1, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_input"

    const-string/jumbo v1, "NetflixComLaunchActivity, ignore"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mActivitiesVisibleCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/app/UserInputManager;->postOnFocusLost(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 4

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_input"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResumed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    instance-of v0, p1, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_input"

    const-string/jumbo v1, "NetflixComLaunchActivity, ignore"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->isApplicationInForeground()Z

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mActivitiesVisibleCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    instance-of v1, p1, Lcom/netflix/mediaclient/ui/launch/UIWebViewActivity;

    if-nez v1, :cond_2

    instance-of v1, p1, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    if-eqz v1, :cond_4

    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string/jumbo v2, "nf_input"

    const-string/jumbo v3, "LaunchActivity: Foreground with intent"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    :goto_1
    invoke-direct {p0, p1, v1, v0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->postOnForeground(Landroid/content/Context;Landroid/content/Intent;Z)V

    :goto_2
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/app/UserInputManager;->postOnFocusGain(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "nf_input"

    const-string/jumbo v3, "LaunchActivity: Foreground without intent"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->postOnForeground(Landroid/content/Context;Landroid/content/Intent;Z)V

    goto :goto_2
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_input"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivitySaveInstanceState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_input"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityStarted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_input"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityStopped "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/app/UserInputManager;->postOnBackground(Landroid/content/Context;)V

    return-void
.end method

.method public removeListener(Lcom/netflix/mediaclient/android/app/ApplicationStateListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateUserInteraction()V
    .locals 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mLastUserInteraction:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method
