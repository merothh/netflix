.class public Lcom/netflix/mediaclient/service/mdx/TargetStateManager;
.super Ljava/lang/Object;
.source "TargetStateManager.java"


# static fields
.field private static final DEFAULT_RETRY_INTERNAL:I = 0x3e8

.field private static final LAUNCH_ATTEMPT_TIMEOUT_MS:J

.field private static final LAUNCH_TIMEOUT:I = 0xfa00

.field private static final MAX_STATEMACHINE_RESET_ON_ERROR:I = 0x3

.field private static final PAIRING_RETRY_INTERVAL:I = 0xbb8

.field private static final PAIRING_TIMEOUT:I = 0x5dc0

.field private static final REGPAIRING_RETRY_INTERVAL:I = 0xfa0

.field private static final REGPAIRING_TIMEOUT:I = 0x7d00

.field private static final SESSION_MESSAGE_RETRY:I = 0x4

.field private static final SESSION_RETRY_INTERVAL:I = 0x3e8

.field private static final STATE_TIMEOUT:I = 0x1f40

.field private static final TAG:Ljava/lang/String; = "nf_mdx"


# instance fields
.field private mActivated:Z

.field mCurrentState:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

.field private mDefaultAction:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mHasUiCommand:Z

.field private mIsPreviouslyPaired:Z

.field private mIsTargetSelected:Z

.field private mLaunched:Z

.field private mListener:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;

.field private mPendingSessionAction:Ljava/lang/Runnable;

.field private mPreviousLaunchAttemptMs:Ljava/util/concurrent/atomic/AtomicLong;

.field mPreviousState:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

.field private mRegistrationAcceptance:I

.field mRetryCurrentAction:I

.field mRetryCurrentInterval:I

.field private mSessionRequested:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mStateMachineResetCountSince:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->LAUNCH_ATTEMPT_TIMEOUT_MS:J

    return-void
.end method

.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;Z)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mSessionRequested:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mDefaultAction:Ljava/util/Map;

    iput v4, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mStateMachineResetCountSince:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mPreviousLaunchAttemptMs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_mdx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "StateMachine: init state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mListener:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;

    iput-boolean p3, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mIsTargetSelected:Z

    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->getRetry()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mRetryCurrentAction:I

    iput-boolean v4, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mHasUiCommand:Z

    return-void
.end method

.method private resetStateMachineResetCount()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mStateMachineResetCountSince:I

    return-void
.end method

.method private scheduleRetry(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_mdx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TargetStateManager: schedule retry for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->access$000(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mRetryCurrentInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mListener:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;

    iget v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mRetryCurrentInterval:I

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;->scheduleEvent(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;I)V

    return-void
.end method

.method private sessionEnded()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mHasUiCommand:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mSessionRequested:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateSessionEnd:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    return-void
.end method

.method private transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_mdx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TargetStateManager: from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->access$000(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->access$000(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mPreviousState:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    if-ne v0, p1, :cond_3

    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mRetryCurrentAction:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mRetryCurrentAction:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mRetryCurrentAction:I

    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mRetryCurrentInterval:I

    iget v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mRetryCurrentInterval:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mRetryCurrentInterval:I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mListener:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->Timeout:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;->removeEvents(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mListener:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SessionRetry:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;->removeEvents(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mListener:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->PairingRetry:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;->removeEvents(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;)V

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mDefaultAction:Ljava/util/Map;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->getId()Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->getTimeOut()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mListener:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->Timeout:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->getTimeOut()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;->scheduleEvent(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateRetryExhausted:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mListener:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mPreviousState:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;->stateHasExhaustedRetry(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mListener:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->Timeout:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;->removeEvents(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mListener:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SessionRetry:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;->removeEvents(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mListener:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->PairingRetry:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;->removeEvents(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->getRetry()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mRetryCurrentAction:I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->getRetryInterval()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mRetryCurrentInterval:I

    goto :goto_0
.end method


# virtual methods
.method public addSessionRequest(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mSessionRequested:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addUiCommand(Ljava/lang/Runnable;Z)V
    .locals 2

    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "StateMachine: addUiCommand "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mHasUiCommand:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mSessionRequested:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public canRestartState(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)Z
    .locals 2

    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mStateMachineResetCountSince:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateHasPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateNeedHandShake:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateSendingMessage:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSessionActive()Z
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateSessionReady:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateSendingMessage:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public receivedEvent(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;)V
    .locals 6

    const/4 v2, 0x0

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->LaunchFailed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->getId()Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateNeedLaunched:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateNotLaunched:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mLaunched:Z

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$1;->$SwitchMap$com$netflix$mediaclient$service$mdx$TargetStateManager$StateId:[I

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->getId()Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->StartTarget:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SessionCommandReceived:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mPreviousLaunchAttemptMs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateNeedLaunched:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->TargetUpdate:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mLaunched:Z

    if-nez v0, :cond_5

    :cond_4
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->LaunchSucceed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mIsPreviouslyPaired:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateHasPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateNoPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateNotLaunched:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->LaunchSucceed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mIsPreviouslyPaired:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateHasPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto :goto_0

    :cond_8
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mActivated:Z

    if-nez v0, :cond_9

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateNeedRegPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto :goto_0

    :cond_9
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateNoPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto :goto_0

    :cond_a
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->LaunchFailed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->LaunchRetry:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->scheduleRetry(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;)V

    goto/16 :goto_0

    :cond_b
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->LaunchRetry:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mPreviousLaunchAttemptMs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->LAUNCH_ATTEMPT_TIMEOUT_MS:J

    add-long/2addr v4, v0

    cmp-long v4, v2, v4

    if-gez v4, :cond_c

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mPreviousLaunchAttemptMs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateNeedLaunched:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto/16 :goto_0

    :cond_c
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateTimeout:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mListener:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mPreviousState:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;->stateHasTimedOut(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto/16 :goto_0

    :cond_d
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->TargetUpdate:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mLaunched:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mIsPreviouslyPaired:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateHasPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto/16 :goto_0

    :cond_e
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateNoPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto/16 :goto_0

    :cond_f
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->Timeout:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateTimeout:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mListener:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mPreviousState:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;->stateHasTimedOut(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto/16 :goto_0

    :pswitch_3
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->StartSessionSucceed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateNeedHandShake:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->resetStateMachineResetCount()V

    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mIsTargetSelected:Z

    goto/16 :goto_0

    :cond_10
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SendMessageFailedNeedRepair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateBadPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto/16 :goto_0

    :cond_11
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SendMessageFailed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SendMessageFailedNeedNewSession:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_12
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SessionRetry:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->scheduleRetry(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;)V

    goto/16 :goto_0

    :cond_13
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SessionRetry:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateHasPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto/16 :goto_0

    :cond_14
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->Timeout:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateHasPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto/16 :goto_0

    :pswitch_4
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->DeletePairSucceed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateNoPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto/16 :goto_0

    :cond_15
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->Timeout:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateTimeout:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mListener:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mPreviousState:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;->stateHasTimedOut(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto/16 :goto_0

    :pswitch_5
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->PairSucceed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateHasPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto/16 :goto_0

    :cond_16
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->PairFailedNeedRegPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mRegistrationAcceptance:I

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mHasUiCommand:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mIsTargetSelected:Z

    if-eqz v0, :cond_19

    :cond_17
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string/jumbo v0, "nf_mdx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "StateMachine: StateNoPair, mHasUiCommand ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mHasUiCommand:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mIsTargetSelected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mIsTargetSelected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateNeedRegPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto/16 :goto_0

    :cond_19
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mRegistrationAcceptance:I

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateNoPairNeedRegPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mListener:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateNoPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;->stateHasError(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto/16 :goto_0

    :cond_1a
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateHasError:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mListener:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mPreviousState:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;->stateHasError(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto/16 :goto_0

    :cond_1b
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->PairFailedExistedPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateBadPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto/16 :goto_0

    :cond_1c
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->PairFailed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->PairingRetry:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->scheduleRetry(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;)V

    goto/16 :goto_0

    :cond_1d
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->PairingRetry:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->RegistrationInProgress:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_1e
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateNoPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto/16 :goto_0

    :cond_1f
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->Timeout:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateTimeout:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mListener:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mPreviousState:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;->stateHasTimedOut(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto/16 :goto_0

    :pswitch_6
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SessionCommandReceived:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mRegistrationAcceptance:I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateNeedRegPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto/16 :goto_0

    :pswitch_7
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->PairSucceed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateHasPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto/16 :goto_0

    :cond_20
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->PairFailedExistedPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateBadPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto/16 :goto_0

    :cond_21
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->Timeout:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateTimeout:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mListener:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mPreviousState:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;->stateHasTimedOut(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto/16 :goto_0

    :cond_22
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->PairFailed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->PairFailedNeedRegPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_23
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->PairingRetry:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->scheduleRetry(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;)V

    goto/16 :goto_0

    :cond_24
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->PairingRetry:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateNeedRegPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto/16 :goto_0

    :cond_25
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->RegistrationInProgress:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateNoPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto/16 :goto_0

    :pswitch_8
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SessionEnd:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->sessionEnded()V

    goto/16 :goto_0

    :cond_26
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->HandShakeSucceed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateSessionReady:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->resetStateMachineResetCount()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mSessionRequested:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mListener:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SessionCommandReceived:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;->scheduleEvent(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;I)V

    goto/16 :goto_0

    :cond_27
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->HandShakeFailed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SessionRetry:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->scheduleRetry(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;)V

    goto/16 :goto_0

    :cond_28
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SessionRetry:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateNeedHandShake:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto/16 :goto_0

    :cond_29
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->Timeout:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateNeedHandShake:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto/16 :goto_0

    :pswitch_9
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SessionEnd:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->sessionEnded()V

    goto/16 :goto_0

    :cond_2a
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SessionCommandReceived:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mSessionRequested:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mSessionRequested:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mPendingSessionAction:Ljava/lang/Runnable;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateSendingMessage:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mPendingSessionAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->setDefaultAction(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;Ljava/lang/Runnable;)V

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateSendingMessage:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto/16 :goto_0

    :cond_2b
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "StateMachine: SessionCommandReceived, but no task!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2c
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SendMessageFailedNeedRepair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateBadPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mPendingSessionAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mPendingSessionAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->addUiCommand(Ljava/lang/Runnable;Z)V

    goto/16 :goto_0

    :cond_2d
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SendMessageFailedNeedNewSession:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateHasPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mPendingSessionAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mPendingSessionAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->addUiCommand(Ljava/lang/Runnable;Z)V

    goto/16 :goto_0

    :pswitch_a
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SessionEnd:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->sessionEnded()V

    goto/16 :goto_0

    :cond_2e
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SendMessageSucceed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateSessionReady:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->resetStateMachineResetCount()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mSessionRequested:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mListener:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SessionCommandReceived:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;->scheduleEvent(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;I)V

    goto/16 :goto_0

    :cond_2f
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SendMessageFailedNeedRepair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateBadPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto/16 :goto_0

    :cond_30
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SendMessageFailedNeedNewSession:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateHasPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto/16 :goto_0

    :cond_31
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SendMessageFailed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SessionRetry:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->scheduleRetry(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;)V

    goto/16 :goto_0

    :cond_32
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SessionRetry:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateSendingMessage:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto/16 :goto_0

    :cond_33
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->Timeout:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateSendingMessage:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto/16 :goto_0

    :pswitch_b
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SessionCommandReceived:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateHasPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto/16 :goto_0

    :cond_34
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->LaunchFailed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateNotLaunched:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto/16 :goto_0

    :cond_35
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->LaunchSucceed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateHasPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto/16 :goto_0

    :pswitch_c
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SessionEnd:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->sessionEnded()V

    goto/16 :goto_0

    :cond_36
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SessionCommandReceived:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mPreviousState:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mPreviousState:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mListener:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SessionCommandReceived:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;->scheduleEvent(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;I)V

    goto/16 :goto_0

    :cond_37
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->LaunchSucceed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateHasPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method public restart(I)V
    .locals 4

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateLaunched:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->getRetry()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mRetryCurrentAction:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mHasUiCommand:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mPreviousLaunchAttemptMs:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mIsPreviouslyPaired:Z

    iget v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mRegistrationAcceptance:I

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mActivated:Z

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->start(ZIZI)V

    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mStateMachineResetCountSince:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mStateMachineResetCountSince:I

    return-void
.end method

.method public setDefaultAction(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mDefaultAction:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public start(ZIZI)V
    .locals 4

    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mIsPreviouslyPaired:Z

    iput p2, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mRegistrationAcceptance:I

    iput-boolean p3, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mActivated:Z

    if-nez p4, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mLaunched:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mPreviousLaunchAttemptMs:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->getId()Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateNotLaunched:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mIsTargetSelected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mPreviousLaunchAttemptMs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateNeedLaunched:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->getId()Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateLaunched:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mIsPreviouslyPaired:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateHasPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateNoPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->transitionStateTo(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_mdx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "StateMachine: init state is not handled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mCurrentState:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public updateTarget(ZIZI)V
    .locals 1

    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mIsPreviouslyPaired:Z

    iput p2, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mRegistrationAcceptance:I

    iput-boolean p3, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mActivated:Z

    if-nez p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->mLaunched:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
