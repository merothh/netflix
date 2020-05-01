.class Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;
.super Ljava/lang/Object;
.source "BroadcastReceiverHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_offlineBroadcast"


# instance fields
.field private final mCommonBroadcastListener:Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$BroadcastHelperListener;

.field private final mContext:Landroid/content/Context;

.field private mIsRegistered:Z

.field private final mPlayerBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserAgentBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mWorkHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$BroadcastHelperListener;Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$1;-><init>(Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->mPlayerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$3;-><init>(Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->mUserAgentBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->mWorkHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->mCommonBroadcastListener:Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$BroadcastHelperListener;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->onPlayerIntentReceived(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;)Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$BroadcastHelperListener;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->mCommonBroadcastListener:Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$BroadcastHelperListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->onUserAgentIntentReceived(Landroid/content/Intent;)V

    return-void
.end method

.method private onPlayerIntentReceived(Landroid/content/Intent;)V
    .locals 5

    invoke-static {p1}, Lcom/netflix/mediaclient/util/IntentUtils;->getIntentActionOrNull(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "playbackType"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->fromValue(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "nf_offlineBroadcast"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPlayerIntentReceived playbackType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " intentAction="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->mWorkHandler:Landroid/os/Handler;

    new-instance v3, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$2;-><init>(Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private onUserAgentIntentReceived(Landroid/content/Intent;)V
    .locals 4

    invoke-static {p1}, Lcom/netflix/mediaclient/util/IntentUtils;->getIntentActionOrNull(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "nf_offlineBroadcast"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUserAgentIntentReceived intentAction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->mWorkHandler:Landroid/os/Handler;

    new-instance v2, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$4;

    invoke-direct {v2, p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$4;-><init>(Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->mIsRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->mPlayerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/IntentUtils;->unregisterSafelyBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->mUserAgentBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/IntentUtils;->unregisterSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->mIsRegistered:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public init()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->mIsRegistered:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->mPlayerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "com.netflix.mediaclient.intent.action.LOCAL_PLAYER_PLAY_START"

    aput-object v3, v2, v5

    const-string/jumbo v3, "com.netflix.mediaclient.intent.action.LOCAL_PLAYER_PLAY_STOP"

    aput-object v3, v2, v4

    invoke-static {v0, v1, v7, v2}, Lcom/netflix/mediaclient/util/IntentUtils;->registerSafelyBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->mUserAgentBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "com.netflix.mediaclient.intent.action.NOTIFY_USER_ACCOUNT_ACTIVE"

    aput-object v3, v2, v5

    const-string/jumbo v3, "com.netflix.mediaclient.intent.action.NOTIFY_USER_ACCOUNT_DEACTIVE"

    aput-object v3, v2, v4

    const-string/jumbo v3, "com.netflix.mediaclient.intent.action.ACCOUNT_DATA_FETCHED"

    aput-object v3, v2, v6

    invoke-static {v0, v1, v7, v2}, Lcom/netflix/mediaclient/util/IntentUtils;->registerSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;[Ljava/lang/String;)Z

    return-void
.end method
