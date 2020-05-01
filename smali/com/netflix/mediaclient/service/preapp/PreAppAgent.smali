.class public Lcom/netflix/mediaclient/service/preapp/PreAppAgent;
.super Lcom/netflix/mediaclient/service/ServiceAgent;
.source "PreAppAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/ServiceAgent$PreAppAgentInterface;


# static fields
.field public static final PREAPP_AGENT_TO_ACCOUNT_DEACTIVE:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.PREAPP_AGENT_TO_ACCOUNT_DEACTIVE"

.field public static final PREAPP_AGENT_TO_ALL_MEMBER_UPDATED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.PREAPP_AGENT_TO_ALL_MEMBER_UPDATED"

.field public static final PREAPP_AGENT_TO_CW_UPDATED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.PREAPP_AGENT_TO_CW_UPDATED"

.field public static final PREAPP_AGENT_TO_IQ_UPDATED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.PREAPP_AGENT_TO_IQ_UPDATED"

.field public static final PREAPP_AGENT_TO_NON_MEMBER_UPDATED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.PREAPP_AGENT_TO_NON_MEMBER_UPDATED"

.field private static final PREAPP_PREFETCH_NOTIFY_DELAY_MS:J = 0x1388L

.field protected static final TAG:Ljava/lang/String; = "nf_preappagent"


# instance fields
.field private final informPrefetchRunnable:Ljava/lang/Runnable;

.field private final mDataUpdateIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPreAppAgentDataHandler:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

.field public final mUserAgentIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;-><init>()V

    new-instance v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgent$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent$1;-><init>(Lcom/netflix/mediaclient/service/preapp/PreAppAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->mDataUpdateIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgent$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent$2;-><init>(Lcom/netflix/mediaclient/service/preapp/PreAppAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->mUserAgentIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgent$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent$3;-><init>(Lcom/netflix/mediaclient/service/preapp/PreAppAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->informPrefetchRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/preapp/PreAppAgent;)Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->mPreAppAgentDataHandler:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/preapp/PreAppAgent;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->handleAccountDeactive(Landroid/content/Context;)V

    return-void
.end method

.method private handleAccountDeactive(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->mPreAppAgentDataHandler:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

    sget-object v1, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->ACCOUNT_DEACTIVATED:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->clear(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    return-void
.end method

.method public static informCwUpdated(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.PREAPP_AGENT_TO_CW_UPDATED"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->sendLocalBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static informIqUpdated(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.PREAPP_AGENT_TO_IQ_UPDATED"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->sendLocalBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static informMemberUpdated(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.PREAPP_AGENT_TO_ALL_MEMBER_UPDATED"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->sendLocalBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static informNonMemberVideosUpdated(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.PREAPP_AGENT_TO_NON_MEMBER_UPDATED"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->sendLocalBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private registerDataUpdateReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PREAPP_AGENT_TO_ALL_MEMBER_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PREAPP_AGENT_TO_CW_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PREAPP_AGENT_TO_IQ_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PREAPP_AGENT_TO_NON_MEMBER_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->mDataUpdateIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private registerUserAgentIntentReceiver()V
    .locals 3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->mUserAgentIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents;->getNotificationIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private removePrefetchRunnable()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->informPrefetchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "nf_preappagent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fail removing informPrefetchRunnable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static sendLocalBroadcast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_preappagent"

    const-string/jumbo v1, "Intent %s sent"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private unregisterDataUpdateReceiver()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->mDataUpdateIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "nf_preappagent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterDataUpdateReceiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterUserAgentIntentReceiver()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->mUserAgentIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "nf_preappagent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterUserAgentIntentReceiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->removePrefetchRunnable()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->unregisterDataUpdateReceiver()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->unregisterUserAgentIntentReceiver()V

    invoke-super {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;->destroy()V

    return-void
.end method

.method protected doInit()V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->mPreAppAgentDataHandler:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->registerDataUpdateReceiver()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->registerUserAgentIntentReceiver()V

    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public handleCommand(Landroid/content/Intent;)Z
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0xc

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v1, "nf_preappagent"

    const-string/jumbo v2, "Intent is null"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "nf_preappagent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Received command "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->getBrowseAgent()Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;

    move-result-object v2

    if-nez v2, :cond_2

    const-string/jumbo v1, "nf_preappagent"

    const-string/jumbo v2, "browseAgent null?"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "com.netflix.mediaclient.intent.action.REFRESH_NON_MEMBER_DATA"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2, v5, v0, v6}, Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;->fetchNonMemberVideos(IZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "com.netflix.mediaclient.intent.action.REFRESH_DATA"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->isUserLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PREAPP_AGENT_TO_ALL_MEMBER_UPDATED"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->sendLocalBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-interface {v2, v5, v0, v6}, Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;->fetchNonMemberVideos(IZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    goto :goto_1

    :cond_5
    const-string/jumbo v1, "nf_preappagent"

    const-string/jumbo v2, "Unknown command!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public informPrefetched(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->informPrefetchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgent;->informPrefetchRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
