.class public abstract Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;
.super Lo/bV;
.source ""

# interfaces
.implements Lo/zM;


# static fields
.field static final SERVICE_KILL_DELAY_WAKED_BY_GCM_MS:J = 0x927c0L

.field private static final TAG:Ljava/lang/String; = "nf_push"

.field private static idCounter:I = -0x1


# instance fields
.field private mBrowseAgent:Lo/hW;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

.field private mImageLoaderRepository:Lo/ErrorCodes;

.field private mInfoEventHandler:Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;

.field private mPushInfoEventStartedService:Z

.field private mSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

.field private final pushNotificationReceiver:Landroid/content/BroadcastReceiver;

.field protected registrationId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 1

    .line 109
    invoke-direct {p0}, Lo/bV;-><init>()V

    .line 598
    new-instance v0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$3;-><init>(Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->pushNotificationReceiver:Landroid/content/BroadcastReceiver;

    .line 110
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mContext:Landroid/content/Context;

    .line 111
    iput-object p2, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    const-string p1, "nf_push"

    const-string p2, "PushNotificationAgent::"

    .line 112
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 61
    sget v0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->idCounter:I

    return v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->onLogin()V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;Landroid/content/Intent;)Lo/jk;
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->createUserData(Landroid/content/Intent;)Lo/jk;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;Lo/jk;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->onLogout(Lo/jk;)V

    return-void
.end method

.method private areNotificationsEnabled()Z
    .locals 5

    .line 392
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/OnKeyListener;->d(Landroid/content/Context;)Lo/OnKeyListener;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "nf_push"

    if-nez v0, :cond_0

    const-string v0, "areNotificationsEnabled:: NotificationManagerCompat is null, assume that notifications are enabled"

    .line 394
    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 397
    :cond_0
    invoke-virtual {v0}, Lo/OnKeyListener;->a()Z

    move-result v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 398
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "areNotificationsEnabled:: notifications are enabled %b"

    invoke-static {v2, v3, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v0
.end method

.method private createNewCurrentUserSettings(Ljava/lang/String;)Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;
    .locals 4

    .line 170
    new-instance v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;-><init>()V

    .line 171
    iput-object p1, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->accountOwnerToken:Ljava/lang/String;

    .line 172
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/adi;->e(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->oldAppVersion:I

    const/4 v1, 0x1

    .line 173
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->optedIn:Z

    new-array v1, v1, [Ljava/lang/Object;

    .line 174
    iget-boolean v2, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->optedIn:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "nf_push"

    const-string v3, "creating settings optIn: %s"

    invoke-static {v2, v3, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 175
    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mSettings:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->saveSettings()V

    return-object v0
.end method

.method private static createSessionEndedEvent(Ljava/lang/Long;Ljava/lang/String;[Lcom/netflix/cl/model/PushNotificationType;ZZLjava/lang/String;)Lcom/netflix/cl/model/event/session/RegisterForPushNotificationsEnded;
    .locals 7

    const/4 p5, 0x0

    if-nez p0, :cond_0

    return-object p5

    .line 335
    :cond_0
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v0, p0}, Lcom/netflix/cl/Logger;->getSession(Ljava/lang/Long;)Lcom/netflix/cl/model/event/session/Session;

    move-result-object p0

    .line 336
    instance-of v0, p0, Lcom/netflix/cl/model/event/session/action/RegisterForPushNotifications;

    if-eqz v0, :cond_1

    .line 337
    new-instance p5, Lcom/netflix/cl/model/event/session/RegisterForPushNotificationsEnded;

    move-object v2, p0

    check-cast v2, Lcom/netflix/cl/model/event/session/action/RegisterForPushNotifications;

    .line 340
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 341
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v1, p5

    move-object v3, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/netflix/cl/model/event/session/RegisterForPushNotificationsEnded;-><init>(Lcom/netflix/cl/model/event/session/action/RegisterForPushNotifications;[Lcom/netflix/cl/model/PushNotificationType;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V

    :cond_1
    return-object p5
.end method

.method private createUserData(Landroid/content/Intent;)Lo/jk;
    .locals 2

    .line 408
    new-instance v0, Lo/jk;

    invoke-direct {v0}, Lo/jk;-><init>()V

    const-string v1, "device_cat"

    .line 409
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/jk;->a:Ljava/lang/String;

    const-string v1, "nid"

    .line 410
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/jk;->d:Ljava/lang/String;

    const-string v1, "sid"

    .line 411
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/jk;->c:Ljava/lang/String;

    const-string v1, "uid"

    .line 412
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lo/jk;->b:Ljava/lang/String;

    return-object v0
.end method

.method private getAndUpdateOldDeviceToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    const-string v1, "old_push_message_token"

    .line 352
    invoke-static {p1, v1, v0}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "last_push_message_token"

    .line 353
    invoke-static {p1, v3, v0}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    invoke-static {p2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v2

    .line 359
    :cond_0
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 361
    invoke-static {p1, v3, p2}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p2

    .line 364
    :cond_1
    invoke-static {v2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 366
    invoke-static {p1, v1, v0}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    :cond_2
    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v7, 0x1

    aput-object v0, v5, v7

    const-string v8, "nf_push"

    const-string v9, "from Pref oldDeviceToken %s, lastDeviceToken %s"

    .line 369
    invoke-static {v8, v9, v5}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 372
    invoke-static {v0, p2}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v2, "device token changed"

    .line 373
    invoke-static {v8, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-static {p1, v1, v0}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-static {p1, v3, p2}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v4, [Ljava/lang/Object;

    aput-object v0, p1, v6

    aput-object p2, p1, v7

    const-string p2, "to Pref oldDeviceToken %s, lastDeviceToken %s"

    .line 379
    invoke-static {v8, p2, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_3
    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method private declared-synchronized getMessageId(Landroid/content/Context;)I
    .locals 3

    monitor-enter p0

    .line 526
    :try_start_0
    sget v0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->idCounter:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "nf_notification_id_counter"

    .line 527
    invoke-static {p1, v0, v2}, Lo/aer;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->idCounter:I

    .line 530
    :cond_0
    sget v0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->idCounter:I

    .line 531
    sget v1, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->idCounter:I

    add-int/2addr v1, v2

    sput v1, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->idCounter:I

    .line 533
    new-instance v1, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v2, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$2;

    invoke-direct {v2, p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$2;-><init>(Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private loadConfiguration()V
    .locals 1

    .line 138
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->loadSettings(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mSettings:Ljava/util/Map;

    return-void
.end method

.method private onLogin()V
    .locals 5

    .line 563
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->isPushSupported()Z

    move-result v0

    const-string v1, "nf_push"

    if-nez v0, :cond_0

    const-string v0, "We can not do anything because device does not support push notifications!"

    .line 564
    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->c()Ljava/lang/String;

    move-result-object v0

    .line 574
    iget-object v2, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mSettings:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iput-object v2, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    .line 575
    iget-object v2, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    const-string v2, "User was not know from before"

    .line 576
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->createNewCurrentUserSettings(Ljava/lang/String;)Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    goto :goto_0

    :cond_1
    new-array v0, v4, [Ljava/lang/Object;

    .line 579
    iget-boolean v2, v2, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->optedIn:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "User was known from before and he opted in %b"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    :try_start_0
    const-string v0, "report sPushInfoEventStartedService: %s"

    new-array v2, v4, [Ljava/lang/Object;

    .line 584
    iget-boolean v4, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mPushInfoEventStartedService:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 585
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mPushInfoEventStartedService:Z

    if-eqz v0, :cond_2

    .line 586
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getNetflixPlatform()Lo/SmartSelectSprite;

    move-result-object v0

    const-wide/32 v2, 0x927c0

    invoke-interface {v0, v2, v3}, Lo/SmartSelectSprite;->c(J)V

    return-void

    .line 590
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iget-boolean v2, v2, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->optedIn:Z

    invoke-static {v0, v2}, Lo/cT;->b(Landroid/content/Context;Z)V

    .line 591
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->optedIn:Z

    sget-object v2, Lcom/netflix/cl/model/AppView;->login:Lcom/netflix/cl/model/AppView;

    invoke-virtual {p0, v0, v2}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->report(ZLcom/netflix/cl/model/AppView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v2, "Check if we are registered already failed!"

    .line 594
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private declared-synchronized onLogout(Lo/jk;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "nf_push"

    const-string v1, "User is logging out"

    .line 197
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->isPushSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "nf_push"

    const-string v0, "We can not do anything because device does not support push notifications!"

    .line 200
    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 206
    :try_start_1
    invoke-direct {p0, v0, v0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->report(ZZ)V

    if-eqz p1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mSettings:Ljava/util/Map;

    iget-object v2, p1, Lo/jk;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iput-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    .line 211
    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    if-nez v1, :cond_1

    const-string v1, "nf_push"

    const-string v2, "User is logging out and it was unknown before?"

    .line 212
    invoke-static {v1, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v1, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;-><init>()V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    .line 214
    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iget-object p1, p1, Lo/jk;->b:Ljava/lang/String;

    iput-object p1, v1, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->accountOwnerToken:Ljava/lang/String;

    .line 215
    iget-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iput-boolean v0, p1, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->optedIn:Z

    .line 216
    iget-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/adi;->e(Landroid/content/Context;)I

    move-result v0

    iput v0, p1, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->oldAppVersion:I

    .line 220
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->saveSettings()V

    const/4 p1, 0x0

    .line 221
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    .line 224
    invoke-static {}, Lo/id;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private registerReceiver()V
    .locals 4

    const-string v0, "nf_push"

    const-string v1, "Register receiver"

    .line 545
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.netflix.mediaclient.intent.action.PUSH_ONLOGIN"

    const-string v1, "com.netflix.mediaclient.intent.action.PUSH_ONLOGOUT"

    const-string v2, "com.netflix.mediaclient.intent.action.PUSH_NOTIFICATION_OPTIN"

    const-string v3, "com.netflix.mediaclient.intent.action.PUSH_NOTIFICATION_OPTOUT"

    .line 547
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 554
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->pushNotificationReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.netflix.mediaclient.intent.category.PUSH"

    invoke-static {v1, v2, v3, v0}, Lo/adG;->b(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;[Ljava/lang/String;)Z

    return-void
.end method

.method private report(ZZ)V
    .locals 12

    .line 277
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->isPushSupported()Z

    move-result v0

    const-string v1, "nf_push"

    if-nez v0, :cond_0

    const-string p1, "We can not report anything if device does not support push notifications!"

    .line 278
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 285
    :cond_0
    invoke-static {}, Lo/ServiceWorkerController;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "skipping push notification reporting - automation run"

    .line 286
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 290
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->areNotificationsEnabled()Z

    move-result v0

    .line 291
    iget-object v2, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->registrationId:Ljava/lang/String;

    invoke-static {v2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 298
    :cond_2
    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v3, Lcom/netflix/cl/model/event/session/action/RegisterForPushNotifications;

    invoke-direct {v3}, Lcom/netflix/cl/model/event/session/action/RegisterForPushNotifications;-><init>()V

    invoke-virtual {v2, v3}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v4

    .line 301
    invoke-static {}, Lo/adk;->i()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_3

    new-array v2, v3, [Lcom/netflix/cl/model/PushNotificationType;

    .line 302
    sget-object v8, Lcom/netflix/cl/model/PushNotificationType;->alert:Lcom/netflix/cl/model/PushNotificationType;

    aput-object v8, v2, v7

    sget-object v8, Lcom/netflix/cl/model/PushNotificationType;->sound:Lcom/netflix/cl/model/PushNotificationType;

    aput-object v8, v2, v6

    sget-object v8, Lcom/netflix/cl/model/PushNotificationType;->badge:Lcom/netflix/cl/model/PushNotificationType;

    aput-object v8, v2, v5

    goto :goto_0

    :cond_3
    new-array v2, v5, [Lcom/netflix/cl/model/PushNotificationType;

    .line 305
    sget-object v8, Lcom/netflix/cl/model/PushNotificationType;->alert:Lcom/netflix/cl/model/PushNotificationType;

    aput-object v8, v2, v7

    sget-object v8, Lcom/netflix/cl/model/PushNotificationType;->sound:Lcom/netflix/cl/model/PushNotificationType;

    aput-object v8, v2, v6

    :goto_0
    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    const/4 v9, 0x1

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    .line 309
    :goto_1
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v8, v3

    const/4 v3, 0x4

    iget-object v5, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->registrationId:Ljava/lang/String;

    aput-object v5, v8, v3

    const-string v3, "report allowed && optIn(optIn): %s(%s), InfoOptIn: %s, allowed: %s, registrationId: %s "

    invoke-static {v1, v3, v8}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz v4, :cond_9

    .line 312
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "news"

    .line 315
    const-class v5, Landroid/content/Context;

    invoke-static {v5}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-static {v5}, Lcom/netflix/mediaclient/util/NotificationUtils;->b(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    .line 318
    :goto_2
    iget-object v3, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->registrationId:Ljava/lang/String;

    invoke-direct {p0, v3, v5}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getAndUpdateOldDeviceToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 319
    invoke-static {}, Lo/aek;->n()Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Lcom/netflix/cl/model/context/android/AmazonPushNotificationOptions;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    .line 320
    :goto_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v3, v5, v1, v9}, Lcom/netflix/cl/model/context/android/AmazonPushNotificationOptions;-><init>(Ljava/lang/Boolean;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    new-instance v3, Lcom/netflix/cl/model/context/android/AndroidPushNotificationOptions;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    const/4 v5, 0x1

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    .line 321
    :goto_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v3, v5, v1, v9}, Lcom/netflix/cl/model/context/android/AndroidPushNotificationOptions;-><init>(Ljava/lang/Boolean;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 322
    :goto_5
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v1, v3}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    move-result-wide v10

    .line 324
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->registrationId:Ljava/lang/String;

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    const/4 v8, 0x1

    goto :goto_6

    :cond_8
    const/4 v8, 0x0

    :goto_6
    move-object v6, v2

    move v7, p2

    invoke-static/range {v4 .. v9}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->createSessionEndedEvent(Ljava/lang/Long;Ljava/lang/String;[Lcom/netflix/cl/model/PushNotificationType;ZZLjava/lang/String;)Lcom/netflix/cl/model/event/session/RegisterForPushNotificationsEnded;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/netflix/cl/Logger;->endSession(Lcom/netflix/cl/model/event/session/SessionEnded;)Z

    .line 325
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netflix/cl/Logger;->removeContext(Ljava/lang/Long;)Z

    :cond_9
    return-void
.end method

.method public static reportBrowserRedirect(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/MessageData;)V
    .locals 3

    .line 514
    sget-object p0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v0, Lcom/netflix/cl/model/event/discrete/PushNotificationAcknowledged;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationTrackingInfo;

    invoke-direct {v2, p1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationTrackingInfo;-><init>(Lcom/netflix/mediaclient/service/pushnotification/MessageData;)V

    invoke-direct {v0, v1, v2}, Lcom/netflix/cl/model/event/discrete/PushNotificationAcknowledged;-><init>(Ljava/lang/Long;Lcom/netflix/cl/model/TrackingInfo;)V

    invoke-virtual {p0, v0}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V

    return-void
.end method

.method public static reportNotificationCanceled(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/MessageData;)V
    .locals 2

    .line 486
    new-instance p0, Lcom/netflix/cl/model/event/discrete/PushNotificationDismissed;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationTrackingInfo;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationTrackingInfo;-><init>(Lcom/netflix/mediaclient/service/pushnotification/MessageData;)V

    invoke-direct {p0, v0, v1}, Lcom/netflix/cl/model/event/discrete/PushNotificationDismissed;-><init>(Ljava/lang/Long;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 487
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p1, p0}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V

    return-void
.end method

.method private saveSettings()V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mSettings:Ljava/util/Map;

    if-nez v0, :cond_0

    const-string v0, "nf_push"

    const-string v1, "This should not happen! Map is null!"

    .line 234
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 237
    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v2, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$1;

    invoke-direct {v2, p0, v0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$1;-><init>(Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .line 558
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->pushNotificationReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lo/adG;->e(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    return-void
.end method

.method private validateCurrentUser()V
    .locals 4

    .line 146
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->c()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "nf_push"

    if-eqz v1, :cond_0

    const-string v0, "accountOwnerToken ID is empty! nonMember/formerMember ?"

    .line 153
    invoke-static {v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->accountOwnerToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    const-string v1, "We DO NOT have user! Try to find it from settings"

    .line 158
    invoke-static {v2, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mSettings:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iput-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    .line 160
    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    if-nez v1, :cond_2

    const-string v1, "User was not know from before"

    .line 161
    invoke-static {v2, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->createNewCurrentUserSettings(Ljava/lang/String;)Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 164
    iget-boolean v1, v1, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->optedIn:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "User was know from before and he opted in %b"

    invoke-static {v2, v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->unregisterReceiver()V

    .line 134
    invoke-super {p0}, Lo/bV;->destroy()V

    return-void
.end method

.method public doInit()V
    .locals 2

    .line 121
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->loadConfiguration()V

    .line 122
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->registerReceiver()V

    .line 123
    sget-object v0, Lo/ErrorCodes;->d:Lo/ErrorCodes$TaskDescription;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lo/ErrorCodes$TaskDescription;->e(Landroid/content/Context;)Lo/ErrorCodes;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mImageLoaderRepository:Lo/ErrorCodes;

    .line 124
    const-class v0, Lo/hW;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/hW;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mBrowseAgent:Lo/hW;

    return-void
.end method

.method public informServiceStartedOnGcmInfo()V
    .locals 2

    const-string v0, "nf_push"

    const-string v1, "noting that gcmInfoEvent started NetflixService"

    .line 633
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 634
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mPushInfoEventStartedService:Z

    return-void
.end method

.method public isOptIn()Z
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->optedIn:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract isPushSupported()Z
.end method

.method public isSupported()Z
    .locals 1

    .line 260
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->isPushSupported()Z

    move-result v0

    return v0
.end method

.method protected onMessage(Landroid/content/Intent;)V
    .locals 8

    const-string v0, "nf_push"

    const-string v1, "Message received, create notification. Running it on main thread."

    .line 422
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mInfoEventHandler:Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;

    if-nez v0, :cond_2

    .line 424
    monitor-enter p0

    .line 425
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mInfoEventHandler:Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;

    if-nez v0, :cond_1

    .line 426
    invoke-static {}, Lo/dW;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    new-instance v0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mBrowseAgent:Lo/hW;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getOfflineAgent()Lo/nS;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getConfigurationAgent()Lo/cz;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119;-><init>(Lo/hW;Lo/nS;Lo/cz;Lo/zM;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mInfoEventHandler:Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;

    goto :goto_0

    .line 429
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mBrowseAgent:Lo/hW;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getConfigurationAgent()Lo/cz;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;-><init>(Lo/hW;Lo/cz;Lo/zM;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mInfoEventHandler:Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;

    .line 432
    :cond_1
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    if-nez p1, :cond_3

    const-string p1, "nf_push"

    const-string v0, "NotificationFactory.createNotification:: Intent is null!"

    .line 435
    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 439
    :cond_3
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v2

    .line 441
    new-instance v5, Lcom/netflix/mediaclient/service/pushnotification/Payload;

    invoke-direct {v5, p1}, Lcom/netflix/mediaclient/service/pushnotification/Payload;-><init>(Landroid/content/Intent;)V

    .line 442
    invoke-static {v5}, Lcom/netflix/mediaclient/service/pushnotification/NotificationFactory;->isValid(Lcom/netflix/mediaclient/service/pushnotification/Payload;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 447
    :cond_4
    iget-object v0, v5, Lcom/netflix/mediaclient/service/pushnotification/Payload;->defaultActionKey:Ljava/lang/String;

    const-string v1, "INFO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 448
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getNetflixPlatform()Lo/SmartSelectSprite;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 450
    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mInfoEventHandler:Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->b()Lo/BC;

    move-result-object v7

    move-object v3, p0

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->handleEvent(Landroid/content/Context;Lo/zM;Lo/SmartSelectSprite;Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/content/Intent;Lo/BC;)V

    :cond_5
    return-void

    .line 455
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mBrowseAgent:Lo/hW;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->b()Lo/BC;

    move-result-object v1

    invoke-static {v0, v1, v5, p1}, Lcom/netflix/mediaclient/service/pushnotification/NotificationFactory;->handleSocialAction(Lo/hW;Lo/BC;Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 459
    :cond_7
    invoke-static {v2}, Lcom/netflix/mediaclient/util/NotificationUtils;->e(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {v2}, Lcom/netflix/mediaclient/util/NotificationUtils;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 460
    iget-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mImageLoaderRepository:Lo/ErrorCodes;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getMessageId(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v2, v5, p1, v0, v1}, Lcom/netflix/mediaclient/service/pushnotification/NotificationFactory;->createNotification(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;Lo/ErrorCodes;ILcom/netflix/mediaclient/service/user/UserAgent;)V

    :cond_8
    return-void
.end method

.method protected onNotificationBrowserRedirect(Landroid/content/Intent;)V
    .locals 4

    .line 497
    invoke-static {p1}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->createInstance(Landroid/content/Intent;)Lcom/netflix/mediaclient/service/pushnotification/MessageData;

    move-result-object v0

    const-string v1, "nf_push"

    if-nez v0, :cond_0

    const-string p1, "Unable to report browser redirect notification since message data are missing!"

    .line 499
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "User browser redirect notification %s"

    .line 502
    invoke-static {v1, v3, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 505
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->reportBrowserRedirect(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/MessageData;)V

    .line 507
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Landroid/content/Intent;)V

    const-string v0, "target_url"

    .line 508
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 509
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/aeH;->d(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected onNotificationCanceled(Landroid/content/Intent;)V
    .locals 3

    .line 471
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "nf_push"

    invoke-static {v0, p1, v1}, Lo/adK;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 473
    invoke-static {p1}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->createInstance(Landroid/content/Intent;)Lcom/netflix/mediaclient/service/pushnotification/MessageData;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Unable to report canceled notification since message data are missing!"

    .line 475
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const-string v2, "User canceled notification %s"

    .line 478
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 481
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->reportNotificationCanceled(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/MessageData;)V

    return-void
.end method

.method protected onNotificationOptIn(Z)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 246
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "nf_push"

    const-string v3, "onNotificationOptIn - user optIn ? %b"

    invoke-static {v2, v3, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 248
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->validateCurrentUser()V

    .line 249
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->updateSettingsOnOptedIn(Z)V

    .line 250
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lo/cT;->b(Landroid/content/Context;Z)V

    .line 252
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->report(ZZ)V

    return-void
.end method

.method public onServiceStarted()V
    .locals 2

    .line 644
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->validateCurrentUser()V

    .line 646
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    if-eqz v0, :cond_0

    .line 647
    iget-boolean v0, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->optedIn:Z

    sget-object v1, Lcom/netflix/cl/model/AppView;->browseTitles:Lcom/netflix/cl/model/AppView;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->report(ZLcom/netflix/cl/model/AppView;)V

    goto :goto_0

    :cond_0
    const-string v0, "nf_push"

    const-string v1, "Unknown user, report true"

    .line 649
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 650
    sget-object v1, Lcom/netflix/cl/model/AppView;->browseTitles:Lcom/netflix/cl/model/AppView;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->report(ZLcom/netflix/cl/model/AppView;)V

    :goto_0
    return-void
.end method

.method public report(ZLcom/netflix/cl/model/AppView;)V
    .locals 0

    const/4 p2, 0x1

    .line 266
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->report(ZZ)V

    return-void
.end method

.method protected updateSettingsOnOptedIn(Z)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    if-nez v0, :cond_0

    const-string p1, "nf_push"

    const-string v0, "User is NOT logged in, do nothing. We can not register"

    .line 182
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 185
    :cond_0
    iput-boolean p1, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->optedIn:Z

    const/4 p1, 0x1

    .line 186
    iput-boolean p1, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->optInDisplayed:Z

    .line 192
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->saveSettings()V

    return-void
.end method
