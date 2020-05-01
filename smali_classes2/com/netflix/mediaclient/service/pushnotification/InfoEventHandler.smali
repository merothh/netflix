.class public Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$RefreshLolomoRunnable;,
        Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$RefreshListRunnable;
    }
.end annotation


# static fields
.field private static final GCM_BROWSE_EVENT_RATE_LIMIT_DELAY_MS:J = 0x3e8L

.field private static final GCM_NOTIFICATION_LIST_CHANGE_EVENT_RATE_LIMIT_DELAY_MS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "nf_push_info"


# instance fields
.field private final fetchPreAppDataRunnable:Ljava/lang/Runnable;

.field protected final mBrowseAgent:Lo/hW;

.field private final mConfigAgent:Lo/cz;

.field protected final mMainHandler:Landroid/os/Handler;

.field private final mPushAgent:Lo/zM;

.field private final refreshListRunnable:Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$RefreshListRunnable;

.field private final refreshLolomoRunnable:Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$RefreshLolomoRunnable;

.field private final refreshSocialNotificationRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lo/hW;Lo/cz;Lo/zM;)V
    .locals 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    .line 51
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->mMainHandler:Landroid/os/Handler;

    .line 276
    new-instance v0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$RefreshListRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$RefreshListRunnable;-><init>(Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->refreshListRunnable:Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$RefreshListRunnable;

    .line 278
    new-instance v0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$RefreshLolomoRunnable;

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$RefreshLolomoRunnable;-><init>(Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->refreshLolomoRunnable:Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$RefreshLolomoRunnable;

    .line 283
    new-instance v0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$1;-><init>(Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->refreshSocialNotificationRunnable:Ljava/lang/Runnable;

    .line 293
    new-instance v0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$2;-><init>(Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->fetchPreAppDataRunnable:Ljava/lang/Runnable;

    .line 97
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->mBrowseAgent:Lo/hW;

    .line 98
    iput-object p2, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->mConfigAgent:Lo/cz;

    .line 99
    iput-object p3, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->mPushAgent:Lo/zM;

    return-void
.end method

.method private getNListChangeEventRateLimit()J
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->mConfigAgent:Lo/cz;

    invoke-interface {v0}, Lo/cz;->t()I

    move-result v0

    if-gez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    if-lez v0, :cond_1

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x3e8

    :goto_0
    return-wide v0
.end method

.method private handleLolomoRefreshEvent(Landroid/content/Context;Lo/SmartSelectSprite;ZLcom/netflix/mediaclient/service/pushnotification/Payload;)V
    .locals 1

    .line 175
    const-class v0, Lo/Cl;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Cl;

    invoke-interface {v0, p1}, Lo/Cl;->c(Landroid/content/Context;)Z

    move-result p1

    if-nez p3, :cond_0

    if-nez p1, :cond_0

    .line 178
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->killSelf(Lo/SmartSelectSprite;)V

    return-void

    .line 184
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->mMainHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->refreshLolomoRunnable:Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$RefreshLolomoRunnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 185
    iget-object p1, p4, Lcom/netflix/mediaclient/service/pushnotification/Payload;->renoInvisibleMessageId:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p4, Lcom/netflix/mediaclient/service/pushnotification/Payload;->renoInvisibleMessageId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p1, p4, Lcom/netflix/mediaclient/service/pushnotification/Payload;->messageGuid:Ljava/lang/String;

    .line 186
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 187
    iget-object p2, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->refreshLolomoRunnable:Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$RefreshLolomoRunnable;

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$RefreshLolomoRunnable;->setRenoMessageId(Ljava/lang/String;)V

    .line 189
    :cond_2
    iget-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->mMainHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->refreshLolomoRunnable:Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$RefreshLolomoRunnable;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->getBrowseEventRateLimitMs()J

    move-result-wide p3

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private handleNListChangeEvent(Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "nf_push_info"

    const-string v0, "handling EVENT_NOTIFICATION_LIST_CHANGED"

    .line 231
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->mMainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->refreshSocialNotificationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 233
    iget-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->mMainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->refreshSocialNotificationRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->getNListChangeEventRateLimit()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private handleNReadEvent(Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "nf_push_info"

    const-string v0, "handling EVENT_NOTIFICATION_READ"

    .line 218
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->mMainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->refreshSocialNotificationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 220
    iget-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->mMainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->refreshSocialNotificationRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->getNListChangeEventRateLimit()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private handleRefreshListEvent(ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 201
    iget-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->refreshListRunnable:Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$RefreshListRunnable;

    invoke-virtual {p1, p3, p4}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$RefreshListRunnable;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->mMainHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->refreshListRunnable:Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$RefreshListRunnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 203
    iget-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->mMainHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->refreshListRunnable:Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$RefreshListRunnable;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->getBrowseEventRateLimitMs()J

    move-result-wide p3

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 205
    iget-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->mMainHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->fetchPreAppDataRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 206
    iget-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->mMainHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->fetchPreAppDataRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->getBrowseEventRateLimitMs()J

    move-result-wide p3

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private killSelf(Lo/SmartSelectSprite;)V
    .locals 6

    const-string v0, "nf_push_info"

    const-string v1, "Skip handling event - gcmInfoEvent woke up netflixService intent: "

    .line 247
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->mPushAgent:Lo/zM;

    invoke-interface {v1}, Lo/zM;->informServiceStartedOnGcmInfo()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-wide/32 v2, 0x927c0

    .line 250
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    const-string v4, "kill service in %d ms"

    invoke-static {v0, v4, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 251
    invoke-interface {p1, v2, v3}, Lo/SmartSelectSprite;->c(J)V

    return-void
.end method


# virtual methods
.method protected getBrowseEventRateLimitMs()J
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->mConfigAgent:Lo/cz;

    invoke-interface {v0}, Lo/cz;->k()I

    move-result v0

    if-gez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    if-lez v0, :cond_1

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x3e8

    :goto_0
    return-wide v0
.end method

.method public handleEvent(Landroid/content/Context;Lo/zM;Lo/SmartSelectSprite;Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/content/Intent;Lo/BC;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "nf_push_info"

    if-eqz p6, :cond_0

    .line 107
    iget-object v3, p4, Lcom/netflix/mediaclient/service/pushnotification/Payload;->profileGuid:Ljava/lang/String;

    invoke-static {v3}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    invoke-interface {p6}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v3

    .line 109
    iget-object v4, p4, Lcom/netflix/mediaclient/service/pushnotification/Payload;->profileGuid:Ljava/lang/String;

    invoke-static {v3, v4}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v3, p1, v0

    .line 110
    iget-object p2, p4, Lcom/netflix/mediaclient/service/pushnotification/Payload;->profileGuid:Ljava/lang/String;

    aput-object p2, p1, v1

    const-string p2, "drop push event - currentProfile :%s != profileGuid:%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v3, "processing message, payload has no profileId or currentProfile is null "

    .line 114
    invoke-static {v2, v3}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v3, "isRunning"

    .line 117
    invoke-static {p5, v3}, Lo/aem;->e(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p5

    .line 118
    const-class v3, Lo/Cl;

    invoke-static {v3}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/Cl;

    invoke-interface {v3, p1}, Lo/Cl;->c(Landroid/content/Context;)Z

    move-result v3

    .line 119
    invoke-static {}, Lo/BrowserContract;->f()Z

    move-result v4

    xor-int/2addr v4, v1

    .line 122
    iget-object v5, p4, Lcom/netflix/mediaclient/service/pushnotification/Payload;->hasPing:Ljava/lang/String;

    const-string v6, "true"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v6, "received message contains ping param. reporting current state"

    .line 124
    invoke-static {v2, v6}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {p1}, Lo/cT;->a(Landroid/content/Context;)Z

    move-result v6

    sget-object v7, Lcom/netflix/cl/model/AppView;->homeTab:Lcom/netflix/cl/model/AppView;

    invoke-interface {p2, v6, v7}, Lo/zM;->report(ZLcom/netflix/cl/model/AppView;)V

    :cond_2
    if-eqz v4, :cond_3

    if-nez p5, :cond_3

    if-nez v3, :cond_3

    if-nez v5, :cond_3

    const-string p1, "handleEvent bailing because !wasServiceRunning && !isWidgetInstalled"

    .line 130
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->killSelf(Lo/SmartSelectSprite;)V

    return-void

    :cond_3
    if-nez p6, :cond_4

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p4, p1, v0

    const-string p2, "currentProfile null dropping gcm event payload:%s"

    .line 137
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 141
    :cond_4
    iget-object p2, p4, Lcom/netflix/mediaclient/service/pushnotification/Payload;->renoMessageType:Ljava/lang/String;

    const-string p6, "NewLolomo"

    invoke-virtual {p6, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 142
    invoke-direct {p0, p1, p3, p5, p4}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->handleLolomoRefreshEvent(Landroid/content/Context;Lo/SmartSelectSprite;ZLcom/netflix/mediaclient/service/pushnotification/Payload;)V

    return-void

    .line 146
    :cond_5
    iget-object p1, p4, Lcom/netflix/mediaclient/service/pushnotification/Payload;->renoMessageType:Ljava/lang/String;

    const-string p2, "NewRow"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 147
    iget-object p1, p4, Lcom/netflix/mediaclient/service/pushnotification/Payload;->renoRefreshListContext:Ljava/lang/String;

    iget-object p2, p4, Lcom/netflix/mediaclient/service/pushnotification/Payload;->renoInvisibleMessageId:Ljava/lang/String;

    if-eqz p2, :cond_6

    iget-object p2, p4, Lcom/netflix/mediaclient/service/pushnotification/Payload;->renoInvisibleMessageId:Ljava/lang/String;

    goto :goto_0

    :cond_6
    iget-object p2, p4, Lcom/netflix/mediaclient/service/pushnotification/Payload;->messageGuid:Ljava/lang/String;

    :goto_0
    invoke-direct {p0, p5, v3, p1, p2}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->handleRefreshListEvent(ZZLjava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object p1, p4, Lcom/netflix/mediaclient/service/pushnotification/Payload;->renoMessageAtrributesVideoId:Ljava/lang/String;

    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    iget p1, p4, Lcom/netflix/mediaclient/service/pushnotification/Payload;->renoMessageAtrributesVideoBookmark:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_7

    .line 153
    iget-object p1, p4, Lcom/netflix/mediaclient/service/pushnotification/Payload;->renoMessageAtrributesVideoId:Ljava/lang/String;

    iget p2, p4, Lcom/netflix/mediaclient/service/pushnotification/Payload;->renoMessageAtrributesVideoBookmark:I

    invoke-virtual {p0, p5, p1, p2}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->handleTriggerDownloadsEvent(ZLjava/lang/String;I)V

    :cond_7
    return-void

    .line 161
    :cond_8
    iget-object p1, p4, Lcom/netflix/mediaclient/service/pushnotification/Payload;->actionInfoType:Ljava/lang/String;

    invoke-static {p1}, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->isNotificationReadEvent(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 162
    invoke-direct {p0, p5}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->handleNReadEvent(Z)V

    return-void

    .line 166
    :cond_9
    iget-object p1, p4, Lcom/netflix/mediaclient/service/pushnotification/Payload;->actionInfoType:Ljava/lang/String;

    invoke-static {p1}, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->isNotificationListChangedEvent(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 167
    invoke-direct {p0, p5}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->handleNListChangeEvent(Z)V

    return-void

    :cond_a
    new-array p1, v1, [Ljava/lang/Object;

    aput-object p4, p1, v0

    const-string p2, "unknown message - dropping - %s"

    .line 171
    invoke-static {v2, p2, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method protected handleTriggerDownloadsEvent(ZLjava/lang/String;I)V
    .locals 0

    return-void
.end method
