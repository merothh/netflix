.class public Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;
.super Ljava/lang/Object;
.source "InfoEventHandler.java"


# static fields
.field private static final GCM_BROWSE_EVENT_RATE_LIMIT_DELAY_MS:J = 0x3e8L

.field private static final GCM_NOTIFICATION_LIST_CHANGE_EVENT_RATE_LIMIT_DELAY_MS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "nf_push_info"

.field private static mInfoEventHanlder:Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;

.field private static mService:Lcom/netflix/mediaclient/service/NetflixService;


# instance fields
.field private final fetchPreAppDataRunnable:Ljava/lang/Runnable;

.field private final refreshCWRunnable:Ljava/lang/Runnable;

.field private final refreshIQRunnable:Ljava/lang/Runnable;

.field private final refreshLolomoRunnable:Ljava/lang/Runnable;

.field private final refreshSocialNotificationRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->mInfoEventHanlder:Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$1;-><init>(Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->refreshCWRunnable:Ljava/lang/Runnable;

    .line 208
    new-instance v0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$2;-><init>(Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->refreshIQRunnable:Ljava/lang/Runnable;

    .line 218
    new-instance v0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$3;-><init>(Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->refreshLolomoRunnable:Ljava/lang/Runnable;

    .line 232
    new-instance v0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$4;-><init>(Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->refreshSocialNotificationRunnable:Ljava/lang/Runnable;

    .line 242
    new-instance v0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$5;-><init>(Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->fetchPreAppDataRunnable:Ljava/lang/Runnable;

    .line 34
    return-void
.end method

.method static synthetic access$000()Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->mService:Lcom/netflix/mediaclient/service/NetflixService;

    return-object v0
.end method

.method private getBrowseEventRateLimitMs(Lcom/netflix/mediaclient/service/NetflixService;)J
    .locals 2

    .prologue
    .line 177
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/NetflixService;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getRateLimitForGcmBrowseEvents()I

    move-result v0

    .line 180
    if-gez v0, :cond_0

    .line 181
    const-wide/16 v0, 0x0

    .line 183
    :goto_0
    return-wide v0

    :cond_0
    if-lez v0, :cond_1

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x3e8

    goto :goto_0
.end method

.method public static getInstance()Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->mInfoEventHanlder:Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;

    return-object v0
.end method

.method private getNListChangeEventRateLimit(Lcom/netflix/mediaclient/service/NetflixService;)J
    .locals 2

    .prologue
    .line 187
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/NetflixService;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getRateLimitForNListChangeEvents()I

    move-result v0

    .line 190
    if-gez v0, :cond_0

    .line 191
    const-wide/16 v0, 0x0

    .line 193
    :goto_0
    return-wide v0

    :cond_0
    if-lez v0, :cond_1

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x3e8

    goto :goto_0
.end method

.method private handleLolomoRefreshEvent(Lcom/netflix/mediaclient/service/NetflixService;ZLcom/netflix/mediaclient/service/pushnotification/Payload;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 104
    if-nez p2, :cond_0

    .line 106
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->informServerAndKillSelf(Lcom/netflix/mediaclient/service/NetflixService;)V

    .line 118
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v2}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportNewLolomoActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 112
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/NetflixService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->refreshLolomoRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 113
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/NetflixService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->refreshLolomoRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->getBrowseEventRateLimitMs(Lcom/netflix/mediaclient/service/NetflixService;)J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 115
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    iget-object v3, p3, Lcom/netflix/mediaclient/service/pushnotification/Payload;->renoCause:Ljava/lang/String;

    iget-object v4, p3, Lcom/netflix/mediaclient/service/pushnotification/Payload;->renoMessageGuid:Ljava/lang/String;

    iget-wide v6, p3, Lcom/netflix/mediaclient/service/pushnotification/Payload;->renoCreationTimestamp:J

    .line 116
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, p3, Lcom/netflix/mediaclient/service/pushnotification/Payload;->messageGuid:Ljava/lang/String;

    iget-object v7, p3, Lcom/netflix/mediaclient/service/pushnotification/Payload;->guid:Ljava/lang/String;

    .line 115
    invoke-static/range {v0 .. v7}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportNewLolomoActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleMyListEvent(Lcom/netflix/mediaclient/service/NetflixService;ZZ)V
    .locals 4

    .prologue
    .line 91
    if-eqz p2, :cond_1

    .line 92
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/NetflixService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->refreshIQRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 93
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/NetflixService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->refreshIQRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->getBrowseEventRateLimitMs(Lcom/netflix/mediaclient/service/NetflixService;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    if-eqz p3, :cond_0

    .line 96
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/NetflixService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->fetchPreAppDataRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 97
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/NetflixService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->fetchPreAppDataRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->getBrowseEventRateLimitMs(Lcom/netflix/mediaclient/service/NetflixService;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private handleNListChangeEvent(Lcom/netflix/mediaclient/service/NetflixService;Z)V
    .locals 4

    .prologue
    .line 149
    if-nez p2, :cond_0

    .line 158
    :goto_0
    return-void

    .line 154
    :cond_0
    const-string/jumbo v0, "nf_push_info"

    const-string/jumbo v1, "handling EVENT_NOTIFICATION_LIST_CHANGED"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/NetflixService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->refreshSocialNotificationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 156
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/NetflixService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->refreshSocialNotificationRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->getNListChangeEventRateLimit(Lcom/netflix/mediaclient/service/NetflixService;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private handleNReadEvent(Lcom/netflix/mediaclient/service/NetflixService;Z)V
    .locals 4

    .prologue
    .line 136
    if-nez p2, :cond_0

    .line 145
    :goto_0
    return-void

    .line 141
    :cond_0
    const-string/jumbo v0, "nf_push_info"

    const-string/jumbo v1, "handling EVENT_NOTIFICATION_READ"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/NetflixService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->refreshSocialNotificationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 143
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/NetflixService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->refreshSocialNotificationRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->getNListChangeEventRateLimit(Lcom/netflix/mediaclient/service/NetflixService;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private handlePlayEndEvent(Lcom/netflix/mediaclient/service/NetflixService;ZZ)V
    .locals 4

    .prologue
    .line 123
    if-eqz p2, :cond_1

    .line 124
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/NetflixService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->refreshCWRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 125
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/NetflixService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->refreshCWRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->getBrowseEventRateLimitMs(Lcom/netflix/mediaclient/service/NetflixService;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    if-eqz p3, :cond_0

    .line 128
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/NetflixService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->fetchPreAppDataRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 129
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/NetflixService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->fetchPreAppDataRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->getBrowseEventRateLimitMs(Lcom/netflix/mediaclient/service/NetflixService;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private informServerAndKillSelf(Lcom/netflix/mediaclient/service/NetflixService;)V
    .locals 2

    .prologue
    .line 165
    const-string/jumbo v0, "nf_push_info"

    const-string/jumbo v1, "Skip handling event - gcmInfoEvent woke up netflixService intent: "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/NetflixService;->getPushNotification()Lcom/netflix/mediaclient/servicemgr/IPushNotification;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPushNotification;->informServiceStartedOnGcmInfo()V

    .line 168
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->isAccountReadyToSendReport(Lcom/netflix/mediaclient/service/NetflixService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const-string/jumbo v0, "nf_push_info"

    const-string/jumbo v1, "PushNotifiactionAgent already reported beacon onLogin - report and kill service"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/NetflixService;->getPushNotification()Lcom/netflix/mediaclient/servicemgr/IPushNotification;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPushNotification;->reportAndKillService()V

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    const-string/jumbo v0, "nf_push_info"

    const-string/jumbo v1, "Account not ready, report later"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isAccountReadyToSendReport(Lcom/netflix/mediaclient/service/NetflixService;)Z
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/NetflixService;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public handleEvent(Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 43
    const-string/jumbo v0, "nf_push_info"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not handling event service is null for payload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_0
    return-void

    .line 46
    :cond_0
    sput-object p1, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->mService:Lcom/netflix/mediaclient/service/NetflixService;

    .line 48
    const-string/jumbo v0, "isRunning"

    invoke-static {p3, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    .line 49
    invoke-static {p1}, Lcom/netflix/mediaclient/util/AndroidUtils;->isWidgetInstalled(Landroid/content/Context;)Z

    move-result v1

    .line 51
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 52
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->informServerAndKillSelf(Lcom/netflix/mediaclient/service/NetflixService;)V

    goto :goto_0

    .line 56
    :cond_1
    iget-object v2, p2, Lcom/netflix/mediaclient/service/pushnotification/Payload;->actionInfoType:Ljava/lang/String;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->isLolomoRefreshEvent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 57
    invoke-direct {p0, p1, v0, p2}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->handleLolomoRefreshEvent(Lcom/netflix/mediaclient/service/NetflixService;ZLcom/netflix/mediaclient/service/pushnotification/Payload;)V

    goto :goto_0

    .line 61
    :cond_2
    iget-object v2, p2, Lcom/netflix/mediaclient/service/pushnotification/Payload;->actionInfoType:Ljava/lang/String;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->isMylistChangedEvent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 62
    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->handleMyListEvent(Lcom/netflix/mediaclient/service/NetflixService;ZZ)V

    goto :goto_0

    .line 66
    :cond_3
    iget-object v2, p2, Lcom/netflix/mediaclient/service/pushnotification/Payload;->actionInfoType:Ljava/lang/String;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->isPlayEndEvent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 67
    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->handlePlayEndEvent(Lcom/netflix/mediaclient/service/NetflixService;ZZ)V

    goto :goto_0

    .line 71
    :cond_4
    iget-object v1, p2, Lcom/netflix/mediaclient/service/pushnotification/Payload;->actionInfoType:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->isNotificationReadEvent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->handleNReadEvent(Lcom/netflix/mediaclient/service/NetflixService;Z)V

    goto :goto_0

    .line 76
    :cond_5
    iget-object v1, p2, Lcom/netflix/mediaclient/service/pushnotification/Payload;->actionInfoType:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->isNotificationListChangedEvent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 77
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->handleNListChangeEvent(Lcom/netflix/mediaclient/service/NetflixService;Z)V

    goto :goto_0

    .line 81
    :cond_6
    const-string/jumbo v0, "nf_push_info"

    const-string/jumbo v1, "unknown message - dropping"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
