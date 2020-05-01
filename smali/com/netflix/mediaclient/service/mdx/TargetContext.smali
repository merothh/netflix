.class public Lcom/netflix/mediaclient/service/mdx/TargetContext;
.super Ljava/lang/Object;
.source "TargetContext.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;


# static fields
.field private static final DUPLICATE_MESSAGE_REQUEST_WINDOWS:J = 0x7d0L

.field private static final MSG_COMMAND:I = 0x2

.field private static final MSG_COMMAND_FROM_USER:I = 0x5

.field private static final MSG_EVENT:I = 0x1

.field private static final MSG_PERIODIC:I = 0x4

.field private static final MSG_UPDATETARGET:I = 0x3

.field private static final STATE_CHECK_PERIOD:J = 0x61a8L

.field private static final TAG:Ljava/lang/String; = "nf_mdx"


# instance fields
.field private mActivated:Z

.field private mAudioSubtitleSettingBlob:Ljava/lang/String;

.field private final mAudioSubtitleSettingBlobLock:Ljava/lang/Object;

.field private final mController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

.field private mCurrentSeesionEnded:Z

.field private mDialUsn:Ljava/lang/String;

.field private mDialUuid:Ljava/lang/String;

.field private mFriendlyName:Ljava/lang/String;

.field private mLastError:Ljava/lang/String;

.field private mLaunchStatus:I

.field private mLocation:Ljava/lang/String;

.field private final mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

.field private mPairingContext:Ljava/lang/String;

.field private final mPlayerStateManager:Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;

.field private mPostplayStateBlob:Ljava/lang/String;

.field private mPreviousAudioSubExchangeTime:J

.field private mRegistrationAcceptance:I

.field private mServiceType:Ljava/lang/String;

.field private mSessionId:I

.field private mStateMachine:Lcom/netflix/mediaclient/service/mdx/TargetStateManager;

.field private mTargetCapability:Ljava/lang/String;

.field private mTargetContextHandler:Landroid/os/Handler;

.field private mTargetContextThread:Landroid/os/HandlerThread;

.field private mTargetPlaybackSessionToken:Ljava/lang/String;

.field private mUsn:Ljava/lang/String;

.field private mUuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;Lcom/netflix/mediaclient/service/mdx/NotifierInterface;Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;Z)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;-><init>(Lcom/netflix/mediaclient/service/mdx/TargetContext;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mPlayerStateManager:Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mAudioSubtitleSettingBlobLock:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mPreviousAudioSubExchangeTime:J

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_mdx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TargetContext: for device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p3}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->updateTargetProperty(Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mSessionId:I

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mPairingContext:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "MDX TargetContext"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetContextThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetContextThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/TargetContext$1;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetContextThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/netflix/mediaclient/service/mdx/TargetContext$1;-><init>(Lcom/netflix/mediaclient/service/mdx/TargetContext;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetContextHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mLaunchStatus:I

    if-nez v1, :cond_1

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateNotLaunched:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {v1, p0, v2, p4}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;-><init>(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;Z)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mStateMachine:Lcom/netflix/mediaclient/service/mdx/TargetStateManager;

    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mStateMachine:Lcom/netflix/mediaclient/service/mdx/TargetStateManager;

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateNeedLaunched:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    new-instance v3, Lcom/netflix/mediaclient/service/mdx/TargetContext$LaunchNetflix;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/service/mdx/TargetContext$LaunchNetflix;-><init>(Lcom/netflix/mediaclient/service/mdx/TargetContext;)V

    invoke-virtual {v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->setDefaultAction(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mStateMachine:Lcom/netflix/mediaclient/service/mdx/TargetStateManager;

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateNoPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    new-instance v3, Lcom/netflix/mediaclient/service/mdx/TargetContext$DoPair;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/service/mdx/TargetContext$DoPair;-><init>(Lcom/netflix/mediaclient/service/mdx/TargetContext;)V

    invoke-virtual {v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->setDefaultAction(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mStateMachine:Lcom/netflix/mediaclient/service/mdx/TargetStateManager;

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateBadPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    new-instance v3, Lcom/netflix/mediaclient/service/mdx/TargetContext$DeletePair;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/service/mdx/TargetContext$DeletePair;-><init>(Lcom/netflix/mediaclient/service/mdx/TargetContext;)V

    invoke-virtual {v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->setDefaultAction(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mStateMachine:Lcom/netflix/mediaclient/service/mdx/TargetStateManager;

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateNeedRegPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    new-instance v3, Lcom/netflix/mediaclient/service/mdx/TargetContext$DoRegPair;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/service/mdx/TargetContext$DoRegPair;-><init>(Lcom/netflix/mediaclient/service/mdx/TargetContext;)V

    invoke-virtual {v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->setDefaultAction(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mStateMachine:Lcom/netflix/mediaclient/service/mdx/TargetStateManager;

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateHasPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    new-instance v3, Lcom/netflix/mediaclient/service/mdx/TargetContext$StartSession;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/service/mdx/TargetContext$StartSession;-><init>(Lcom/netflix/mediaclient/service/mdx/TargetContext;)V

    invoke-virtual {v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->setDefaultAction(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mStateMachine:Lcom/netflix/mediaclient/service/mdx/TargetStateManager;

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateNeedHandShake:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    new-instance v3, Lcom/netflix/mediaclient/service/mdx/TargetContext$DoHandShake;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/service/mdx/TargetContext$DoHandShake;-><init>(Lcom/netflix/mediaclient/service/mdx/TargetContext;)V

    invoke-virtual {v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->setDefaultAction(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mStateMachine:Lcom/netflix/mediaclient/service/mdx/TargetStateManager;

    new-instance v2, Lcom/netflix/mediaclient/service/mdx/TargetContext$GetCapabilies;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/service/mdx/TargetContext$GetCapabilies;-><init>(Lcom/netflix/mediaclient/service/mdx/TargetContext;)V

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->addSessionRequest(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mStateMachine:Lcom/netflix/mediaclient/service/mdx/TargetStateManager;

    new-instance v2, Lcom/netflix/mediaclient/service/mdx/TargetContext$GetState;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/service/mdx/TargetContext$GetState;-><init>(Lcom/netflix/mediaclient/service/mdx/TargetContext;)V

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->addSessionRequest(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mStateMachine:Lcom/netflix/mediaclient/service/mdx/TargetStateManager;

    iget v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mRegistrationAcceptance:I

    iget-boolean v3, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mActivated:Z

    iget v4, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mLaunchStatus:I

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->start(ZIZI)V

    return-void

    :cond_1
    new-instance v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateLaunched:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-direct {v1, p0, v2, p4}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;-><init>(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;Z)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mStateMachine:Lcom/netflix/mediaclient/service/mdx/TargetStateManager;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Lcom/netflix/mediaclient/service/mdx/TargetStateManager;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mStateMachine:Lcom/netflix/mediaclient/service/mdx/TargetStateManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mPairingContext:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetContextHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/service/mdx/TargetContext;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mSessionId:I

    return v0
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mDialUuid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/service/mdx/TargetContext;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->playbackStart(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/service/mdx/TargetContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->playbackEnd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Lcom/netflix/mediaclient/service/mdx/NotifierInterface;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/mdx/TargetContext;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mRegistrationAcceptance:I

    return v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mActivated:Z

    return v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/mdx/TargetContext;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mLaunchStatus:I

    return v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/mdx/TargetContext;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->requestStateCheck()V

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mDialUsn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mUsn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method private determineStateErrorCode(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;Ljava/lang/String;)I
    .locals 3

    const/16 v0, 0x69

    const/16 v1, 0x12c

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateNoPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-virtual {v2, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateNoPairNeedRegPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-virtual {v2, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/16 v0, 0x68

    :cond_1
    :goto_0
    return v0

    :cond_2
    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateHasPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-virtual {v2, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateNeedHandShake:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-virtual {v2, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateSendingMessage:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-virtual {v2, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p2}, Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;->isUserCommand(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateNeedLaunched:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x64

    goto :goto_0
.end method

.method private endPlaybackWithError(Ljava/lang/String;I)V
    .locals 1

    const/16 v0, 0x12c

    if-ge p2, v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->playbackEnd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getTargetProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    :cond_0
    return-object p1
.end method

.method private handlePostplayState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "nf_mdx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "postplayState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mPostplayStateBlob:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->postplayState(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mPostplayStateBlob:Ljava/lang/String;

    return-void
.end method

.method private invalidateCachedLanguageData()V
    .locals 4

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mAudioSubtitleSettingBlobLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mAudioSubtitleSettingBlob:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mPreviousAudioSubExchangeTime:J

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private playbackEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "TargetContext: playbackEnd"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->playbackEnd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private playbackStart(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "TargetContext: playbackStart"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->invalidateCachedLanguageData()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->playbackStart(Ljava/lang/String;)V

    return-void
.end method

.method private requestStateCheck()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mStateMachine:Lcom/netflix/mediaclient/service/mdx/TargetStateManager;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/TargetContext$GetState;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/mdx/TargetContext$GetState;-><init>(Lcom/netflix/mediaclient/service/mdx/TargetContext;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->addSessionRequest(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mStateMachine:Lcom/netflix/mediaclient/service/mdx/TargetStateManager;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SessionCommandReceived:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager;->receivedEvent(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;)V

    return-void
.end method

.method private scheduleStateCheck()V
    .locals 4

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetContextHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetContextHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x61a8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetContextHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetContextHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetContextHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetContextHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetContextThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetContextThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetContextThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetContextThread:Landroid/os/HandlerThread;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "mTargetContextThread interrupted"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getTargetPlaybackSessionToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetPlaybackSessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoIds()Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;
    .locals 5

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mPlayerStateManager:Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mPlayerStateManager:Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->getCatalogId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mPlayerStateManager:Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->getEpisodeId()Ljava/lang/String;

    move-result-object v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/WebApiUtils;->extractIds(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;
    :try_end_1
    .catch Ljava/security/InvalidParameterException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v1

    const-string/jumbo v1, "nf_mdx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "TargetContext: fail to getVideoIds "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasActiveSession()Z
    .locals 2

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mPlayerStateManager:Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mPlayerStateManager:Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->getTargetPlayerState()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "STOP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "FATAL_ERROR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "END_PLAYBACK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCurrentSessionEnded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mCurrentSeesionEnded:Z

    return v0
.end method

.method public isThisSession(I)Z
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mSessionId:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isThisTargetPairingContext(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mPairingContext:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isThisTargetUuid(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mUuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mDialUuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mDialUuid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchResult(Z)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->LaunchSucceed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetContextHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "TargetContext: send launchResult"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->LaunchFailed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0
.end method

.method public messageDelivered(I)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SendMessageSucceed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetContextHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public messageError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " message error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mLastError:Ljava/lang/String;

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    const-string/jumbo v1, "6"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "5"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "nf_mdx"

    const-string/jumbo v2, "TargetContext:  MDX_SESSION_INVALID_HMAC"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SendMessageFailedNeedRepair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetContextHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    const-string/jumbo v1, "11"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "nf_mdx"

    const-string/jumbo v2, "TargetContext:  MDX_SESSION_INVALID_SID"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SendMessageFailedNeedNewSession:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "4"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "nf_mdx"

    const-string/jumbo v2, "TargetContext:  MDX_SESSION_INVALID_NONCE"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SendMessageFailed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "10"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "nf_mdx"

    const-string/jumbo v2, "TargetContext:  MDX_SESSION_NETWORK_ERROR"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SendMessageFailed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "nf_mdx"

    const-string/jumbo v2, "TargetContext:  SESSION unknown error"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SendMessageFailedNeedRepair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0
.end method

.method public messageReceived(ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 6

    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mSessionId:I

    if-eq p1, v0, :cond_1

    const-string/jumbo v0, "nf_mdx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "messageReceived doesn\'t match sessionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mDialUuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mDialUuid:Ljava/lang/String;

    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldShowMemento(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->scheduleStateCheck()V

    :cond_2
    const-string/jumbo v0, "HANDSHAKE_ACCEPTED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/message/target/HandshakeAccepted;

    invoke-direct {v0, p3}, Lcom/netflix/mediaclient/service/mdx/message/target/HandshakeAccepted;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/target/HandshakeAccepted;->isAccepted()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->HandShakeSucceed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetContextHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mUuid:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v0, "nf_mdx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "messageReceived failed to parse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "PLAYER_CURRENT_STATE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_1
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerCurrentState;

    invoke-direct {v0, p3}, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerCurrentState;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerCurrentState;->getPlayerState()Lcom/netflix/mediaclient/service/mdx/message/target/PlayerState;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerState;->getXid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetPlaybackSessionToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mPlayerStateManager:Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;

    monitor-enter v2

    :try_start_2
    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mPlayerStateManager:Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;

    invoke-virtual {v3, v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->updateState(Lcom/netflix/mediaclient/service/mdx/message/target/PlayerState;)V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerState;->getPostplayState()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->handlePostplayState(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v0, "nf_mdx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "messageReceived failed to parse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_5
    const-string/jumbo v0, "PLAYER_STATE_CHANGED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :try_start_4
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerStateChanged;

    invoke-direct {v0, p3}, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerStateChanged;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerStateChanged;->getPlayerState()Lcom/netflix/mediaclient/service/mdx/message/target/PlayerState;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerState;->getXid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetPlaybackSessionToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mPlayerStateManager:Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;

    monitor-enter v2

    :try_start_5
    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mPlayerStateManager:Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;

    invoke-virtual {v3, v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->changeState(Lcom/netflix/mediaclient/service/mdx/message/target/PlayerState;)V

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerState;->getPostplayState()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->handlePostplayState(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v0, "nf_mdx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "messageReceived failed to parse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :cond_6
    const-string/jumbo v0, "PLAYER_CAPABILITIES"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetCapability:Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetCapability:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->capability(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v0, "AUDIO_SUBTITLES_CHANGED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "AUDIO_SUBTITLES_SETTINGS"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mAudioSubtitleSettingBlobLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mPreviousAudioSubExchangeTime:J

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mAudioSubtitleSettingBlob:Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mAudioSubtitleSettingBlob:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->audiosub(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v2

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :cond_9
    const-string/jumbo v0, "DIALOG_SHOW"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->dialogShow(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v0, "DIALOG_CANCEL"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->dialogCancel(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v0, "META_DATA_CHANGED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->metaData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v0, "PIN_VERIFICATION_SHOW"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :try_start_8
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/message/target/PinRequired;

    invoke-direct {v0, p3}, Lcom/netflix/mediaclient/service/mdx/message/target/PinRequired;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/target/PinRequired;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/target/PinRequired;->getVideoId()I

    move-result v3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/target/PinRequired;->getAncestorVideoId()I

    move-result v4

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/target/PinRequired;->getAncestorVideoType()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->requestPinVerification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    const-string/jumbo v0, "nf_mdx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "messageReceived failed to parse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v0, "PIN_VERIFICATION_NOT_REQUIRED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :try_start_9
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/message/target/PinNotRequired;

    invoke-direct {v0, p3}, Lcom/netflix/mediaclient/service/mdx/message/target/PinNotRequired;-><init>(Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/target/PinNotRequired;->getIsPinVerified()Z

    move-result v0

    invoke-interface {v2, v1, v0}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->abortPinVerification(Ljava/lang/String;Z)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    const-string/jumbo v0, "nf_mdx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "messageReceived failed to parse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "messageReceived not handle "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public pairingDeleted()V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->DeletePairSucceed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetContextHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public pairingFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " pairing error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mLastError:Ljava/lang/String;

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    const-string/jumbo v1, "30"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "USER_MISMATCH"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "20"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "nf_mdx"

    const-string/jumbo v2, "TargetContext:  MDX_PAIRING_USER_MISMATCH"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->PairFailedNeedRegPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetContextHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    const-string/jumbo v1, "31"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "nf_mdx"

    const-string/jumbo v2, "TargetContext:  MDX_PAIRING_ALREADY_PAIRED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->PairFailedExistedPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "22"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "21"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const-string/jumbo v1, "nf_mdx"

    const-string/jumbo v2, "TargetContext:  PAIRING CTICKET error "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    invoke-interface {v1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->pingNccp()V

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->PairFailed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "99"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "13"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    if-eqz v1, :cond_5

    const-string/jumbo v1, "nf_mdx"

    const-string/jumbo v2, "TargetContext:  PAIRING NETWORK error "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->PairFailed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "11"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "12"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    const-string/jumbo v1, "nf_mdx"

    const-string/jumbo v2, "TargetContext:  PAIRING SERVER/TARGET error "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->PairFailed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    :cond_7
    const-string/jumbo v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "nf_mdx"

    const-string/jumbo v2, "TargetContext:  PAIRING NOERROR error "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->PairSucceed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v1, "42"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo v1, "nf_mdx"

    const-string/jumbo v2, "TargetContext:  MDX_REGISTRATION_PAIRING_IN_PROGRESS error "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->RegistrationInProgress:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v1, "nf_mdx"

    const-string/jumbo v2, "TargetContext:  PAIRING unknown error "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->PairFailedNeedRegPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public pairingSucceed(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->PairSucceed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mPairingContext:Ljava/lang/String;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mPairingContext:Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetContextHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public parseTargetCapabilities()Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_mdx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "TargetContext: parseTargetCapabilities : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetCapability:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetCapability:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetCapability:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "nf_mdx"

    const-string/jumbo v3, "TargetContext: failed to parse Mdx Target Capabilities"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerGetCapabilities;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerGetCapabilities;-><init>()V

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerGetCapabilities;->messageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerGetCapabilities;->messageObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public removeEvents(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetContextHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetContextHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public scheduleEvent(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;I)V
    .locals 4

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-lez p2, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetContextHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetContextHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetContextHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetContextHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public sendCommand(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_mdx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TargetContext: sendCommand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", msgObj: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "PLAYER_GET_CAPABILITIES"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetCapability:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "TargetContext: reutrn cached CAPABILITY"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mDialUuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mDialUuid:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetCapability:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->capability(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mUuid:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "GET_AUDIO_SUBTITLES"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mAudioSubtitleSettingBlobLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mAudioSubtitleSettingBlob:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v2, "TargetContext: reutrn cached AUDIO_SUBTITLES_SETTING"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mDialUuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mDialUuid:Ljava/lang/String;

    :goto_2
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mAudioSubtitleSettingBlob:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->audiosub(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mPreviousAudioSubExchangeTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v0, v2, v4

    if-gez v0, :cond_5

    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v2, "TargetContext: no need to get GET_AUDIO_SUBTITLES_SETTING"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mUuid:Ljava/lang/String;

    goto :goto_2

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mPreviousAudioSubExchangeTime:J

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/TargetContext$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/TargetContext$2;-><init>(Lcom/netflix/mediaclient/service/mdx/TargetContext;Ljava/lang/String;Lorg/json/JSONObject;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetContextHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetContextHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string/jumbo v0, "PLAYER_SET_VOLUME"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "volume"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mPlayerStateManager:Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;

    monitor-enter v1

    :try_start_2
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mPlayerStateManager:Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->setTargetVolume(I)V

    monitor-exit v1

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_7
    const-string/jumbo v0, "SET_AUDIO_SUBTITLES"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->invalidateCachedLanguageData()V

    goto/16 :goto_1

    :cond_8
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mPlayerStateManager:Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mPlayerStateManager:Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->receivedCommand(Ljava/lang/String;)V

    monitor-exit v1

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method public sessionEnd()V
    .locals 5

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mCurrentSeesionEnded:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mDialUuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mDialUuid:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mPlayerStateManager:Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mPlayerStateManager:Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/netflix/mediaclient/service/mdx/TargetContext$PlayerStateManager;->forceToEndPlayback(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    const/16 v2, 0xc9

    const-string/jumbo v3, "session ended"

    invoke-interface {v1, v0, v2, v3}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->error(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v4, v0, Landroid/os/Message;->what:I

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SessionEnd:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetContextHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mUuid:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public sessionStarted(I)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mCurrentSeesionEnded:Z

    iput p1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mSessionId:I

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->StartSessionSucceed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetContextHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public stateHasError(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mDialUuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mDialUuid:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    invoke-interface {v1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->getSession()Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/SessionController;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mSessionId:I

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/SessionController;->getLastMessageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->determineStateErrorCode(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;Ljava/lang/String;)I

    move-result v2

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " target error"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->endPlaybackWithError(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    invoke-interface {v3, v0, v2, v1}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->error(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mUuid:Ljava/lang/String;

    goto :goto_0
.end method

.method public stateHasExhaustedRetry(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mDialUuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mDialUuid:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    invoke-interface {v1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->getSession()Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/SessionController;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mSessionId:I

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/SessionController;->getLastMessageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->determineStateErrorCode(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;Ljava/lang/String;)I

    move-result v2

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mLastError:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->endPlaybackWithError(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    invoke-interface {v3, v0, v2, v1}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->error(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mUuid:Ljava/lang/String;

    goto :goto_0
.end method

.method public stateHasTimedOut(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mDialUuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mDialUuid:Ljava/lang/String;

    :goto_0
    const/16 v2, 0x64

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", timeout: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mLastError:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->endPlaybackWithError(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    invoke-interface {v3, v0, v2, v1}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->error(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mUuid:Ljava/lang/String;

    goto :goto_0
.end method

.method public updateTargetProperty(Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;)V
    .locals 2

    iget-object v0, p1, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->usn:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->getTargetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mUsn:Ljava/lang/String;

    iget-object v0, p1, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->uuid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->getTargetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mUuid:Ljava/lang/String;

    iget-object v0, p1, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->location:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->getTargetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mLocation:Ljava/lang/String;

    iget-object v0, p1, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->friendlyName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->getTargetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mFriendlyName:Ljava/lang/String;

    iget-object v0, p1, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->dialUsn:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->getTargetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mDialUsn:Ljava/lang/String;

    iget-object v0, p1, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->dialUuid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->getTargetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mDialUuid:Ljava/lang/String;

    iget-object v0, p1, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->pairingContext:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->getTargetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mPairingContext:Ljava/lang/String;

    iget-object v0, p1, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->serviceType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->getTargetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mServiceType:Ljava/lang/String;

    iget v0, p1, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->launchStatus:I

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mLaunchStatus:I

    iget v0, p1, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->registrationAcceptance:I

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mRegistrationAcceptance:I

    iget-boolean v0, p1, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->activated:Z

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mActivated:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetContextHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext;->mTargetContextHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
