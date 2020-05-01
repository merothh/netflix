.class public Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;
.super Lcom/netflix/mediaclient/service/ServiceAgent;
.source "WhistleVoipAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/voip/VoipAuthorizationTokensUpdater;
.implements Lcom/netflix/mediaclient/servicemgr/IVoip;
.implements Lcom/vailsys/whistleengine/WhistleEngineDelegate;


# static fields
.field private static final DELAYED_DIAL:J = 0x64L

.field private static final MIN_PROXIMITY:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "nf_voip"

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field cancelAction:Ljava/lang/Runnable;

.field private mAudioFocusRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mAuthorizationTokensManager:Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mConnectivityState:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

.field private mCurrentCall:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;

.field private mDialRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

.field private mEngineReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mEngineStarted:Z

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLockManager:Lcom/netflix/mediaclient/service/voip/PowerLockManager;

.field private mNotificationManager:Lcom/netflix/mediaclient/service/voip/CallNotificationManager;

.field mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mServiceState:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;

.field private mSharedSessionId:Ljava/lang/String;

.field private mStartTime:J

.field private final mVoipReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1153
    new-instance v0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$6;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$6;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;-><init>()V

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mEngineReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->NO_CONNECTION:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mConnectivityState:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    .line 70
    sget-object v0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;->NOT_STARTED:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mServiceState:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mListeners:Ljava/util/List;

    .line 107
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mDialRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 109
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mAudioFocusRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 289
    new-instance v0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$1;-><init>(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mConnection:Landroid/content/ServiceConnection;

    .line 837
    new-instance v0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$2;-><init>(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->cancelAction:Ljava/lang/Runnable;

    .line 1073
    new-instance v0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$5;-><init>(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mVoipReceiver:Landroid/content/BroadcastReceiver;

    .line 1163
    new-instance v0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$7;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$7;-><init>(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 121
    new-instance v0, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mAuthorizationTokensManager:Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;

    .line 122
    new-instance v0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;

    invoke-direct {v0, p1, p0}, Lcom/netflix/mediaclient/service/voip/PowerLockManager;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mLockManager:Lcom/netflix/mediaclient/service/voip/PowerLockManager;

    .line 123
    new-instance v0, Lcom/netflix/mediaclient/service/voip/CallNotificationManager;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/voip/CallNotificationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mNotificationManager:Lcom/netflix/mediaclient/service/voip/CallNotificationManager;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)Lcom/vailsys/whistleengine/WhistleEngine;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    return-object v0
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;Lcom/vailsys/whistleengine/WhistleEngine;)Lcom/vailsys/whistleengine/WhistleEngine;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    return-object p1
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)Lcom/netflix/mediaclient/util/l10n/UserLocale;
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getAppLocale()Lcom/netflix/mediaclient/util/l10n/UserLocale;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mSharedSessionId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)Lcom/netflix/mediaclient/service/voip/PowerLockManager;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mLockManager:Lcom/netflix/mediaclient/service/voip/PowerLockManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->requestAudioFocus()V

    return-void
.end method

.method static synthetic access$1600(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)Lcom/netflix/mediaclient/service/voip/CallNotificationManager;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mNotificationManager:Lcom/netflix/mediaclient/service/voip/CallNotificationManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->stopEngine()V

    return-void
.end method

.method static synthetic access$1900(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;I)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->onCallDisconnected(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;)Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mServiceState:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;

    return-object p1
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->doDialWithEngineCheck()V

    return-void
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mDialRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)Ljava/util/List;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mCurrentCall:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;

    return-object v0
.end method

.method static synthetic access$702(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;)Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mCurrentCall:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;

    return-object p1
.end method

.method static synthetic access$800()V
    .locals 0

    .prologue
    .line 57
    invoke-static {}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->setUrgentAudioThreadPriority()V

    return-void
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)I
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->findLine()I

    move-result v0

    return v0
.end method

.method private callCleanup()V
    .locals 3

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mDialRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1037
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->cancelNotification()V

    .line 1038
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mLockManager:Lcom/netflix/mediaclient/service/voip/PowerLockManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->callEnded()V

    .line 1039
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->releaseAudioFocus()V

    .line 1040
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mStartTime:J

    .line 1041
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mCurrentCall:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;

    .line 1042
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->NO_CONNECTION:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mConnectivityState:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    .line 1043
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.netflix.mediaclient.ui.cs.ACTION_CALL_ENDED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1044
    return-void
.end method

.method private cancelNotification()V
    .locals 3

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mNotificationManager:Lcom/netflix/mediaclient/service/voip/CallNotificationManager;

    if-eqz v0, :cond_0

    .line 1095
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mNotificationManager:Lcom/netflix/mediaclient/service/voip/CallNotificationManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/voip/CallNotificationManager;->cancelNotification(Lcom/netflix/mediaclient/service/NetflixService;Landroid/os/Handler;)V

    .line 1097
    :cond_0
    return-void
.end method

.method private doDial()V
    .locals 1

    .prologue
    .line 919
    new-instance v0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$3;-><init>(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;)V

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->execute(Ljava/lang/Runnable;)V

    .line 960
    return-void
.end method

.method private doDialWithEngineCheck()V
    .locals 2

    .prologue
    .line 889
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mDialRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 890
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "No dial request, no need to start engine"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :goto_0
    return-void

    .line 894
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->startEngine()Z

    move-result v0

    if-nez v0, :cond_1

    .line 895
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Wait to start dial when callback that VOIP engine is started returns!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 899
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->doDial()V

    goto :goto_0
.end method

.method private doTerminate(I)V
    .locals 1

    .prologue
    .line 1020
    new-instance v0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$4;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$4;-><init>(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;I)V

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->execute(Ljava/lang/Runnable;)V

    .line 1033
    return-void
.end method

.method private static execute(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 1149
    sget-object v0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 1150
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1151
    return-void
.end method

.method private findLine()I
    .locals 3

    .prologue
    .line 977
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    const-string/jumbo v0, "nf_voip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Number of lines: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    invoke-virtual {v2}, Lcom/vailsys/whistleengine/WhistleEngine;->getMaxLines()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    invoke-virtual {v0}, Lcom/vailsys/whistleengine/WhistleEngine;->getMaxLines()I

    move-result v0

    if-lez v0, :cond_1

    .line 983
    const/4 v0, 0x1

    .line 987
    :goto_0
    return v0

    .line 986
    :cond_1
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "All lines in use?!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getAppLocale()Lcom/netflix/mediaclient/util/l10n/UserLocale;
    .locals 1

    .prologue
    .line 968
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/ServiceAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/ServiceAgent;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 969
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getCurrentAppLocale()Lcom/netflix/mediaclient/util/l10n/UserLocale;

    move-result-object v0

    .line 971
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->getDeviceLocale()Lcom/netflix/mediaclient/util/l10n/UserLocale;

    move-result-object v0

    goto :goto_0
.end method

.method private getConfiguration()Lcom/vailsys/whistleengine/WhistleEngineConfig;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 328
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mAuthorizationTokensManager:Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->getAuthorizationTokens()Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;

    move-result-object v2

    .line 329
    if-nez v2, :cond_0

    .line 330
    const-string/jumbo v1, "nf_voip"

    const-string/jumbo v2, "Unable to create configuration, tokens not found!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :goto_0
    return-object v0

    .line 334
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 335
    const-string/jumbo v1, "nf_voip"

    const-string/jumbo v3, "Connect to VOIP proxy: netflixvoip.vailsys.com"

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_1
    new-instance v1, Lcom/vailsys/whistleengine/WhistleEngineConfig;

    const-string/jumbo v3, "netflixvoip.vailsys.com"

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->getUserToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/vailsys/whistleengine/WhistleEngineConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string/jumbo v3, "samurai"

    invoke-virtual {v1, v3}, Lcom/vailsys/whistleengine/WhistleEngineConfig;->setApplicationIdentifier(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;->getEncToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vailsys/whistleengine/WhistleEngineConfig;->setPassword(Ljava/lang/String;)V

    .line 341
    sget-object v2, Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;->TLS:Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;

    invoke-virtual {v1, v2}, Lcom/vailsys/whistleengine/WhistleEngineConfig;->setTransportMode(Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;)V

    .line 342
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/vailsys/whistleengine/WhistleEngineConfig;->setEchoCanceler(Z)V

    .line 343
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getWhistleEngineThresholds()Lcom/vailsys/whistleengine/WhistleEngineThresholds;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vailsys/whistleengine/WhistleEngineConfig;->setConnectivityThresholds(Lcom/vailsys/whistleengine/WhistleEngineThresholds;)V

    .line 345
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    .line 346
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getVoipSampleRateInHz()I

    move-result v2

    .line 348
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 349
    const-string/jumbo v3, "nf_voip"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Sets sample rate of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Hz..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_2
    invoke-virtual {v1, v2}, Lcom/vailsys/whistleengine/WhistleEngineConfig;->setSamplerate(I)V

    .line 355
    const-string/jumbo v2, "nf_voip"

    const-string/jumbo v3, "SSL proxy server validation is enabled, set root certificate(s)..."

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070002

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/FileUtils;->readRawString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 359
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 360
    const-string/jumbo v3, "nf_voip"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PEM\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_3
    invoke-virtual {v1, v2}, Lcom/vailsys/whistleengine/WhistleEngineConfig;->setRootCertificate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 363
    goto/16 :goto_0

    .line 365
    :catch_0
    move-exception v1

    .line 366
    const-string/jumbo v2, "nf_voip"

    const-string/jumbo v3, "We failed to load VOIP trust store from res/raw. All attempt to connect will fail!"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private getServiceIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 426
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vailsys/whistleengine/WhistleEngine;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private getVoipSampleRateInHz()I
    .locals 2

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    .line 418
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getVoipConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v1

    if-nez v1, :cond_1

    .line 419
    :cond_0
    const/16 v0, 0x1f40

    .line 421
    :goto_0
    return v0

    :cond_1
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getVoipConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getSampleRateInHz()I

    move-result v0

    goto :goto_0
.end method

.method private getWhistleEngineThresholds()Lcom/vailsys/whistleengine/WhistleEngineThresholds;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 378
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    .line 379
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getVoipConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v2

    if-nez v2, :cond_2

    .line 380
    :cond_0
    const-string/jumbo v1, "nf_voip"

    const-string/jumbo v2, "ConfigAgent null or VOIP config is null. Not expected!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_1
    :goto_0
    return-object v0

    .line 384
    :cond_2
    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getVoipConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v1

    .line 385
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getJitterThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getPacketLosThresholdInPercent()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getRttThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getSipThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v2

    if-nez v2, :cond_3

    .line 386
    const-string/jumbo v1, "nf_voip"

    const-string/jumbo v2, "Thresholds not found, do not set them!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 390
    :cond_3
    new-instance v0, Lcom/vailsys/whistleengine/WhistleEngineThresholds;

    invoke-direct {v0}, Lcom/vailsys/whistleengine/WhistleEngineThresholds;-><init>()V

    .line 392
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getJitterThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 393
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getJitterThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;->getYellow()I

    move-result v2

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getJitterThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;->getRed()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/vailsys/whistleengine/WhistleEngineThresholds;->setJitterThreshold(II)V

    .line 396
    :cond_4
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getSipThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 397
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getSipThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;->getYellow()I

    move-result v2

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getSipThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;->getRed()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/vailsys/whistleengine/WhistleEngineThresholds;->setSIPThreshold(II)V

    .line 400
    :cond_5
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getRttThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 401
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getRttThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;->getYellow()I

    move-result v2

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getRttThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;->getRed()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/vailsys/whistleengine/WhistleEngineThresholds;->setRTTThreshold(II)V

    .line 404
    :cond_6
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getPacketLosThresholdInPercent()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 405
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getPacketLosThresholdInPercent()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;->getYellow()I

    move-result v2

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getPacketLosThresholdInPercent()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;->getRed()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/vailsys/whistleengine/WhistleEngineThresholds;->setPacketLossThreshold(II)V

    .line 408
    :cond_7
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 409
    const-string/jumbo v2, "nf_voip"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Sets threshholds "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private isServiceStarted()Z
    .locals 2

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mServiceState:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;

    sget-object v1, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;->STARTED:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isServiceStartedOrStarting()Z
    .locals 2

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mServiceState:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;

    sget-object v1, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;->STARTED:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mServiceState:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;

    sget-object v1, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;->STARTING:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isServiceStoppedOrStopping()Z
    .locals 2

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mServiceState:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;

    sget-object v1, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;->NOT_STARTED:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mServiceState:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;

    sget-object v1, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;->STOPPED:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mServiceState:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;

    sget-object v1, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;->STOPPING:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCallDisconnected(I)V
    .locals 3

    .prologue
    .line 480
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    if-eqz v0, :cond_3

    .line 481
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mCurrentCall:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;

    if-nez v0, :cond_1

    .line 482
    const-string/jumbo v0, "nf_voip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Call was NOT in progress and we received disconnect on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mCurrentCall:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;->access$400(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;)I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 484
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;

    .line 485
    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mCurrentCall:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;->callDisconnected(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;)V

    goto :goto_1

    .line 488
    :cond_2
    const-string/jumbo v0, "nf_voip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Call is in progress on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mCurrentCall:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;->access$400(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but we received disconnect on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 492
    :cond_3
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Engine is null and we received call disconnect! Should not happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 1047
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Registering VOIP receiver..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mVoipReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/netflix/mediaclient/service/voip/CallNotificationManager;->getNotificationIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1049
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Registered VOIP receiver"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    return-void
.end method

.method private releaseAudioFocus()V
    .locals 4

    .prologue
    .line 785
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mAudioFocusRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "We had audio focus, release it."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 789
    if-eqz v0, :cond_0

    .line 791
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    .line 792
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 793
    const-string/jumbo v1, "nf_voip"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Audio focus release is granted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 795
    :catch_0
    move-exception v0

    .line 796
    const-string/jumbo v1, "nf_voip"

    const-string/jumbo v2, "Failed to request audio focus release"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private requestAudioFocus()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 765
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mAudioFocusRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 766
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Already asked for audip focus..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 768
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 769
    if-eqz v0, :cond_0

    .line 772
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 773
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 774
    const-string/jumbo v1, "nf_voip"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Audio request is granted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 776
    :catch_0
    move-exception v0

    .line 777
    const-string/jumbo v1, "nf_voip"

    const-string/jumbo v2, "Failed to request audio focus"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static setUrgentAudioThreadPriority()V
    .locals 1

    .prologue
    .line 910
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 911
    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 912
    return-void
.end method

.method private startEngine()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 809
    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    if-eqz v2, :cond_0

    .line 810
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mEngineStarted:Z

    if-nez v2, :cond_2

    .line 812
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getConfiguration()Lcom/vailsys/whistleengine/WhistleEngineConfig;

    move-result-object v1

    .line 813
    if-nez v1, :cond_1

    .line 814
    const-string/jumbo v1, "nf_voip"

    const-string/jumbo v2, "Failed to get configuration, unable to start engine!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_0
    :goto_0
    return v0

    .line 818
    :cond_1
    const-string/jumbo v2, "nf_voip"

    const-string/jumbo v3, "Start VOIP engine"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, p0, v1, v3}, Lcom/vailsys/whistleengine/WhistleEngine;->start(Lcom/vailsys/whistleengine/WhistleEngineDelegate;Lcom/vailsys/whistleengine/WhistleEngineConfig;Landroid/content/Context;)V

    .line 822
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mEngineStarted:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 823
    :catch_0
    move-exception v1

    .line 824
    const-string/jumbo v2, "nf_voip"

    const-string/jumbo v3, "Whistle engine was unable to start, report failure"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 825
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->cancelAction:Ljava/lang/Runnable;

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/service/voip/VoipErrorDialogDescriptorFactory;->getHandlerForEngineFailed(Landroid/content/Context;Ljava/lang/Runnable;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/servicemgr/IErrorHandler;->addError(Lcom/netflix/mediaclient/service/error/ErrorDescriptor;)Z

    goto :goto_0

    .line 830
    :cond_2
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v2, "Engine already started!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 831
    goto :goto_0
.end method

.method private declared-synchronized stopEngine()V
    .locals 2

    .prologue
    .line 849
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    if-eqz v0, :cond_0

    .line 850
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mEngineStarted:Z

    if-eqz v0, :cond_1

    .line 851
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Stop VOIP engine"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    invoke-virtual {v0}, Lcom/vailsys/whistleengine/WhistleEngine;->stop()V

    .line 853
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mEngineReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 858
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mEngineStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 859
    monitor-exit p0

    return-void

    .line 855
    :cond_1
    :try_start_1
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Engine already stopped!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 849
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private unregisterReceiver()V
    .locals 4

    .prologue
    .line 1054
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1055
    if-nez v0, :cond_0

    .line 1056
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Context is null, nothing to unregister."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    :goto_0
    return-void

    .line 1061
    :cond_0
    :try_start_0
    const-string/jumbo v1, "nf_voip"

    const-string/jumbo v2, "Unregistering VOIP receiver..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mVoipReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1063
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Unregistered VOIP receiver"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1064
    :catch_0
    move-exception v0

    .line 1065
    const-string/jumbo v1, "nf_voip"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregister VOIP receiver  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addOutboundCallListener(Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;)V
    .locals 2

    .prologue
    .line 751
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Listener is already added!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 756
    :goto_0
    monitor-exit p0

    return-void

    .line 754
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 751
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public authenticationNeeded(Z)V
    .locals 3

    .prologue
    .line 431
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    const-string/jumbo v0, "nf_voip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "authenticationNeeded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_0
    return-void
.end method

.method public declared-synchronized callConnected(I)V
    .locals 3

    .prologue
    .line 439
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    const-string/jumbo v0, "nf_voip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Outbound call connected on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    if-eqz v0, :cond_4

    .line 444
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mCurrentCall:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;

    if-nez v0, :cond_2

    .line 445
    const-string/jumbo v0, "nf_voip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Call was NOT in progress and we received connected on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_1
    :goto_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->GREEN:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mConnectivityState:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    .line 459
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mNotificationManager:Lcom/netflix/mediaclient/service/voip/CallNotificationManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/voip/CallNotificationManager;->updateConnectedNotification(Lcom/netflix/mediaclient/service/NetflixService;Landroid/os/Handler;)V

    .line 460
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;->green:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->reportCallConnected(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;)V

    .line 462
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Sets start time..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mStartTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    :goto_1
    monitor-exit p0

    return-void

    .line 446
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mCurrentCall:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;->access$400(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;)I

    move-result v0

    if-ne v0, p1, :cond_3

    .line 447
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;

    .line 448
    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mCurrentCall:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;->callConnected(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 451
    :cond_3
    :try_start_2
    const-string/jumbo v0, "nf_voip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Call is in progress on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mCurrentCall:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;->access$400(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but we received connect on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 455
    :cond_4
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Engine is null and we received call connected! Should not happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized callDisconnected(I)V
    .locals 4

    .prologue
    .line 469
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    const-string/jumbo v0, "nf_voip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Outbound call disconnected on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->onCallDisconnected(I)V

    .line 474
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->canceledByNetflix:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->reportCallSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 475
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->callCleanup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    monitor-exit p0

    return-void

    .line 469
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized callEnded(I)V
    .locals 4

    .prologue
    .line 559
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    const-string/jumbo v0, "nf_voip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Outbound call ended on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    if-eqz v0, :cond_3

    .line 564
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mCurrentCall:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;

    if-nez v0, :cond_2

    .line 565
    const-string/jumbo v0, "nf_voip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Call was NOT in progress and we received call ended on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;

    .line 571
    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mCurrentCall:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;->callEnded(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 559
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 566
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mCurrentCall:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;->access$400(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;)I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 567
    const-string/jumbo v0, "nf_voip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Call is in progress on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mCurrentCall:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;->access$400(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but we received call ended on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 575
    :cond_3
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Engine is null and we received call ended! Should not happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_4
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->stopEngine()V

    .line 578
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->canceledByNetflix:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->reportCallSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 579
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->callCleanup()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 580
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized callFailed(ILjava/lang/String;I)V
    .locals 6

    .prologue
    .line 499
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    const-string/jumbo v0, "nf_voip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Outbound call failed on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", sipCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lcom/netflix/mediaclient/service/voip/VoipErrorDialogDescriptorFactory;->getHandlerForCallFailed(Landroid/content/Context;Ljava/lang/String;I)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IErrorHandler;->addError(Lcom/netflix/mediaclient/service/error/ErrorDescriptor;)Z

    .line 505
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    if-eqz v0, :cond_5

    .line 506
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mCurrentCall:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;

    if-nez v0, :cond_3

    .line 507
    const-string/jumbo v0, "nf_voip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Call was NOT in progress and we received call failed on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mConnectivityState:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->NO_CONNECTION:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    if-eq v0, v1, :cond_6

    .line 523
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->failedAfterConnected:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    .line 528
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 529
    new-instance v2, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;-><init>()V

    .line 530
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->setFatal(Z)V

    .line 532
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->setErrorCode(Ljava/lang/String;)V

    .line 534
    new-instance v3, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;

    invoke-direct {v3}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 538
    const-string/jumbo v5, "sipCode"

    invoke-virtual {v4, v5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 539
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 540
    const-string/jumbo v5, "reason"

    invoke-virtual {v4, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 543
    :cond_2
    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->setMessage(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    :goto_2
    :try_start_2
    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->setDebug(Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;)V

    .line 549
    new-instance v2, Lcom/netflix/mediaclient/service/logging/client/model/Error;

    sget-object v3, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->clientFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-direct {v2, v3, v1}, Lcom/netflix/mediaclient/service/logging/client/model/Error;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Ljava/util/List;)V

    .line 552
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v1, v0, v3, v2}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->reportCallSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 553
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->callCleanup()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 554
    :goto_3
    monitor-exit p0

    return-void

    .line 508
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mCurrentCall:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;->access$400(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;)I

    move-result v0

    if-ne v0, p1, :cond_4

    .line 509
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;

    .line 510
    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mCurrentCall:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;

    invoke-interface {v0, v2, p2, p3}, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;->callFailed(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 499
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 513
    :cond_4
    :try_start_4
    const-string/jumbo v0, "nf_voip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Call is in progress on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mCurrentCall:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;->access$400(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but we received call failed on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 517
    :cond_5
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Engine is null and we received call failed! Should not happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 525
    :cond_6
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->failedBeforeConnected:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 544
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method public callRinging(I)V
    .locals 3

    .prologue
    .line 585
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    const-string/jumbo v0, "nf_voip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Outbound call ringing on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    if-eqz v0, :cond_4

    .line 590
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mCurrentCall:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;

    if-nez v0, :cond_2

    .line 591
    const-string/jumbo v0, "nf_voip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Call was NOT in progress and we received call ringing on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_1
    :goto_0
    return-void

    .line 592
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mCurrentCall:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;->access$400(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;)I

    move-result v0

    if-ne v0, p1, :cond_3

    .line 593
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;

    .line 594
    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mCurrentCall:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;->callRinging(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;)V

    goto :goto_1

    .line 597
    :cond_3
    const-string/jumbo v0, "nf_voip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Call is in progress on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mCurrentCall:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;->access$400(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but we received call ringing on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 601
    :cond_4
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Engine is null and we received call ringing! Should not happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public callSecured(IZ)V
    .locals 3

    .prologue
    .line 607
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    const-string/jumbo v0, "nf_voip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not supported:::callSecured for line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_0
    return-void
.end method

.method public connectivityUpdate(ILcom/vailsys/whistleengine/WhistleEngineDelegate$ConnectivityState;)V
    .locals 3

    .prologue
    .line 614
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    const-string/jumbo v0, "nf_voip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "connectivityUpdate for line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_0
    const/4 v0, 0x0

    .line 619
    sget-object v1, Lcom/vailsys/whistleengine/WhistleEngineDelegate$ConnectivityState;->GREEN:Lcom/vailsys/whistleengine/WhistleEngineDelegate$ConnectivityState;

    if-ne p2, v1, :cond_2

    .line 620
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->GREEN:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mConnectivityState:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    .line 621
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;->green:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;

    .line 632
    :goto_0
    if-eqz v0, :cond_1

    .line 633
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->reportCallQualityChanged(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;)V

    .line 635
    :cond_1
    return-void

    .line 622
    :cond_2
    sget-object v1, Lcom/vailsys/whistleengine/WhistleEngineDelegate$ConnectivityState;->RED:Lcom/vailsys/whistleengine/WhistleEngineDelegate$ConnectivityState;

    if-ne p2, v1, :cond_3

    .line 623
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->RED:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mConnectivityState:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    .line 624
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;->red:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;

    goto :goto_0

    .line 625
    :cond_3
    sget-object v1, Lcom/vailsys/whistleengine/WhistleEngineDelegate$ConnectivityState;->YELLOW:Lcom/vailsys/whistleengine/WhistleEngineDelegate$ConnectivityState;

    if-ne p2, v1, :cond_4

    .line 626
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->YELLOW:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mConnectivityState:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    .line 627
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;->yellow:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;

    goto :goto_0

    .line 629
    :cond_4
    const-string/jumbo v1, "nf_voip"

    const-string/jumbo v2, "Uknown state!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->unregisterReceiver()V

    .line 283
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->stop()V

    .line 284
    return-void
.end method

.method public declared-synchronized dial()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 867
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mDialRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Request for dial is already in progress!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 884
    :goto_0
    monitor-exit p0

    return v3

    .line 872
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createGUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mSharedSessionId:Ljava/lang/String;

    .line 873
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mSharedSessionId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->reportCallSessionStarted(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 875
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mDialRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 876
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->start()Z

    .line 878
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 879
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Wait to start dial when callback that VOIP service is started returns!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 867
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 883
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->doDialWithEngineCheck()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected doInit()V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->registerReceiver()V

    .line 134
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 135
    return-void
.end method

.method public engineNotReady()V
    .locals 2

    .prologue
    .line 729
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Engine is NOT ready!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mEngineReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 731
    return-void
.end method

.method public engineReady()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 664
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Engine is ready"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mEngineReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 666
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;

    .line 667
    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;->engineStatusChanged(Z)V

    goto :goto_0

    .line 669
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->doDial()V

    .line 670
    return-void
.end method

.method public getCallStartTimeInMs()J
    .locals 2

    .prologue
    .line 740
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mStartTime:J

    return-wide v0
.end method

.method public getConnectivityState()Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mConnectivityState:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    return-object v0
.end method

.method public getCurrentCall()Lcom/netflix/mediaclient/servicemgr/IVoip$Call;
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mCurrentCall:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;

    return-object v0
.end method

.method public getMicrophoneInputLevel()F
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    invoke-virtual {v0}, Lcom/vailsys/whistleengine/WhistleEngine;->getInputLevel()F

    move-result v0

    .line 174
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public incomingCall(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 639
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    const-string/jumbo v0, "nf_voip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Incomming call on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    if-eqz v0, :cond_1

    .line 643
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "We do not support incomming calls, terminate"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    invoke-virtual {v0, p1}, Lcom/vailsys/whistleengine/WhistleEngine;->hangup(I)V

    .line 648
    :goto_0
    return-void

    .line 646
    :cond_1
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Engine is null and we received callback! Should not happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isCallInProgress()Z
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mDialRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mConnectivityState:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->NO_CONNECTION:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 254
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_1

    check-cast v0, Lcom/netflix/mediaclient/service/ServiceAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/ServiceAgent;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->shouldDisableVoip()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 262
    :goto_0
    return v0

    .line 258
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 262
    goto :goto_0
.end method

.method public declared-synchronized isReady()Z
    .locals 1

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public networkFailure(I)V
    .locals 7

    .prologue
    .line 675
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    const-string/jumbo v0, "nf_voip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Network failure for line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->cancelAction:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/voip/VoipErrorDialogDescriptorFactory;->getHandlerForCallFailed(Landroid/content/Context;Ljava/lang/Runnable;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IErrorHandler;->addError(Lcom/netflix/mediaclient/service/error/ErrorDescriptor;)Z

    .line 681
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    if-eqz v0, :cond_4

    .line 682
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mCurrentCall:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;

    if-nez v0, :cond_2

    .line 683
    const-string/jumbo v0, "nf_voip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Call was NOT in progress and we received network failure on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mConnectivityState:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->NO_CONNECTION:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    if-eq v0, v1, :cond_5

    .line 699
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->failedAfterConnected:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    .line 704
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 705
    new-instance v2, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;-><init>()V

    .line 706
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 707
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->setFatal(Z)V

    .line 708
    const-string/jumbo v3, "networkFailed"

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->setErrorCode(Ljava/lang/String;)V

    .line 710
    new-instance v3, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;

    invoke-direct {v3}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;-><init>()V

    .line 713
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 714
    const-string/jumbo v5, "reason"

    const-string/jumbo v6, "networkFailed"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 715
    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->setMessage(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    :goto_2
    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->setDebug(Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;)V

    .line 721
    new-instance v2, Lcom/netflix/mediaclient/service/logging/client/model/Error;

    sget-object v3, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->networkFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-direct {v2, v3, v1}, Lcom/netflix/mediaclient/service/logging/client/model/Error;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Ljava/util/List;)V

    .line 723
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v1, v0, v3, v2}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->reportCallSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 724
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->callCleanup()V

    .line 725
    :goto_3
    return-void

    .line 684
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mCurrentCall:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;->access$400(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;)I

    move-result v0

    if-ne v0, p1, :cond_3

    .line 685
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;

    .line 686
    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mCurrentCall:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;->networkFailed(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;)V

    goto :goto_4

    .line 689
    :cond_3
    const-string/jumbo v0, "nf_voip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Call is in progress on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mCurrentCall:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;->access$400(Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but we received network failed on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 693
    :cond_4
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Engine is null and we received network failed! Should not happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 701
    :cond_5
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->failedBeforeConnected:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    goto/16 :goto_1

    .line 716
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method public refreshAuthorizationTokens()Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mAuthorizationTokensManager:Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->refreshAuthorizationTokens()Z

    move-result v0

    return v0
.end method

.method public registrationSuccessful()V
    .locals 2

    .prologue
    .line 652
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "RegistrationSuccessful? This should not happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    return-void
.end method

.method public declared-synchronized removeOutboundCallListener(Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;)Z
    .locals 1

    .prologue
    .line 760
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeUserAuthorizationTokens()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mAuthorizationTokensManager:Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->removeUserTokens()V

    .line 146
    return-void
.end method

.method public selectedCodec(ILjava/lang/String;I)V
    .locals 3

    .prologue
    .line 657
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    const-string/jumbo v0, "nf_voip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Selected coded for line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", codec "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", sample rate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_0
    return-void
.end method

.method public setMicrophoneMute(Z)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    invoke-virtual {v0, p1}, Lcom/vailsys/whistleengine/WhistleEngine;->setMute(Z)V

    .line 158
    :cond_0
    return-void
.end method

.method public setOutputVolume(F)V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    if-eqz v0, :cond_0

    .line 163
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Set volume..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    invoke-virtual {v0, p1}, Lcom/vailsys/whistleengine/WhistleEngine;->setOutputVolume(F)V

    .line 166
    :cond_0
    return-void
.end method

.method public setSpeakerOn(Z)V
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mLockManager:Lcom/netflix/mediaclient/service/voip/PowerLockManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->setSpeakerOn(Z)V

    .line 746
    return-void
.end method

.method public start()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 195
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->isEnabled()Z

    move-result v2

    .line 196
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->isServiceStartedOrStarting()Z

    move-result v3

    .line 197
    if-eqz v2, :cond_1

    if-nez v3, :cond_1

    .line 198
    const-string/jumbo v2, "nf_voip"

    const-string/jumbo v3, "VOIP service is enabled and it is not ready, start it."

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget-object v2, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;->STARTING:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;

    iput-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mServiceState:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;

    .line 200
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getApplication()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v2

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getServiceIntent()Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3, v4, v1}, Lcom/netflix/mediaclient/NetflixApplication;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 210
    :cond_0
    :goto_0
    return v0

    .line 202
    :cond_1
    if-eqz v2, :cond_2

    .line 203
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v2, "VOIP service is NOT enabled or it started or starting, no need to start it."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 204
    goto :goto_0

    .line 206
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    const-string/jumbo v1, "nf_voip"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "We should NOT be here: VOIP service is enabled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " or it started or starting "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mServiceState:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startDTMF(C)V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    invoke-virtual {v0, p1}, Lcom/vailsys/whistleengine/WhistleEngine;->startDTMF(C)V

    .line 183
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->isServiceStoppedOrStopping()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    .line 218
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Stop VOIP service"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    sget-object v0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;->STOPPING:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mServiceState:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$ServiceState;

    .line 220
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    const-string/jumbo v1, "nf_voip"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VOIP service is enabled "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", ready "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", connection is null "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mConnection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", skip stop!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public stopDTMF()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    invoke-virtual {v0}, Lcom/vailsys/whistleengine/WhistleEngine;->stopDTMF()V

    .line 190
    :cond_0
    return-void
.end method

.method public declared-synchronized terminate()Z
    .locals 4

    .prologue
    .line 996
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mConnectivityState:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->NO_CONNECTION:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    if-eq v0, v1, :cond_0

    .line 997
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->canceledByUserAfterConnected:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    .line 1001
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->reportCallSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 1003
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    if-nez v0, :cond_1

    .line 1004
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Engine is null, unable to terminate call!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1005
    const/4 v0, 0x0

    .line 1015
    :goto_1
    monitor-exit p0

    return v0

    .line 999
    :cond_0
    :try_start_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->canceledByUserBeforeConnected:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    goto :goto_0

    .line 1008
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mCurrentCall:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;

    if-nez v0, :cond_2

    .line 1009
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Current call is null, unable to terminate call!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    :goto_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->callCleanup()V

    .line 1015
    const/4 v0, 0x1

    goto :goto_1

    .line 1011
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mCurrentCall:Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent$WhistleCall;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->doTerminate(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 996
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateAuthorizationData(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorizationData;)V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipAgent;->mAuthorizationTokensManager:Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/voip/AuthorizationTokensManager;->updateAuthorizationData(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipAuthorizationData;)V

    .line 237
    return-void
.end method
