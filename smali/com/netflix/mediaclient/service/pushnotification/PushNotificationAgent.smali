.class public Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;
.super Lcom/netflix/mediaclient/service/ServiceAgent;
.source "PushNotificationAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IPushNotification;


# static fields
.field private static final SERVICE_KILL_DELAY_FOR_GCM_REPORTING_MS:J = 0x7530L

.field private static final TAG:Ljava/lang/String; = "nf_push"

.field private static idCounter:I


# instance fields
.field private gcmRegistrationId:Ljava/lang/String;

.field private mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

.field private mGcmInfoEventStartedService:Z

.field private mGcmRegistered:Z

.field private mGcmSupported:Z

.field private mImageLoader:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

.field private mSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final pushNotificationReceiver:Landroid/content/BroadcastReceiver;

.field private reportOnRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, -0x1

    sput v0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->idCounter:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;-><init>()V

    .line 670
    new-instance v0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$3;-><init>(Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->pushNotificationReceiver:Landroid/content/BroadcastReceiver;

    .line 91
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "PushNotificationAgent::"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->idCounter:I

    return v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->onLogin()V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;Landroid/content/Intent;)Lcom/netflix/mediaclient/service/logging/UserData;
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->createUserData(Landroid/content/Intent;)Lcom/netflix/mediaclient/service/logging/UserData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;Lcom/netflix/mediaclient/service/logging/UserData;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->onLogout(Lcom/netflix/mediaclient/service/logging/UserData;)V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;Z)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->onNotificationOptIn(Z)V

    return-void
.end method

.method private createNewCurrentUserSettings(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;
    .locals 2

    .prologue
    .line 213
    new-instance v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;-><init>()V

    .line 214
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->current:Z

    .line 215
    iput-object p1, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->accountOwnerToken:Ljava/lang/String;

    .line 216
    iput-object p2, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->currentProfileToken:Ljava/lang/String;

    .line 217
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->oldAppVersion:I

    .line 218
    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mSettings:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    return-object v0
.end method

.method private createUserData(Landroid/content/Intent;)Lcom/netflix/mediaclient/service/logging/UserData;
    .locals 4

    .prologue
    .line 456
    new-instance v0, Lcom/netflix/mediaclient/service/logging/UserData;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/UserData;-><init>()V

    .line 457
    const-string/jumbo v1, "esn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/logging/UserData;->esn:Ljava/lang/String;

    .line 458
    const-string/jumbo v1, "device_cat"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/logging/UserData;->deviceCategory:Ljava/lang/String;

    .line 459
    const-string/jumbo v1, "nid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/logging/UserData;->netflixId:Ljava/lang/String;

    .line 460
    const-string/jumbo v1, "sid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/logging/UserData;->secureNetflixId:Ljava/lang/String;

    .line 461
    const-string/jumbo v1, "uid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/logging/UserData;->accountOwnerToken:Ljava/lang/String;

    .line 462
    const-string/jumbo v1, "cp_uid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/logging/UserData;->currentProfileToken:Ljava/lang/String;

    .line 464
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    const-string/jumbo v1, "nf_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CreateUserData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_0
    return-object v0
.end method

.method private doGcmRegistration()V
    .locals 4

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->isGcmSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "device does NOT support GCM!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mGcmRegistered:Z

    if-nez v0, :cond_0

    .line 240
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "device supports GCM and device is NOT registered!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "484286080282"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gcm/GCMRegistrar;->register(Landroid/content/Context;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getGcmInvisibleMsgOptInStatus()Z
    .locals 1

    .prologue
    .line 723
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mGcmInfoEventStartedService:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized getMessageId(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 545
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->idCounter:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 546
    const-string/jumbo v0, "nf_notification_id_counter"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->idCounter:I

    .line 549
    :cond_0
    sget v0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->idCounter:I

    .line 550
    sget v1, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->idCounter:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->idCounter:I

    .line 552
    new-instance v1, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v2, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$2;

    invoke-direct {v2, p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$2;-><init>(Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    monitor-exit p0

    return v0

    .line 545
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getUserData()Lcom/netflix/mediaclient/service/logging/UserData;
    .locals 4

    .prologue
    .line 432
    new-instance v0, Lcom/netflix/mediaclient/service/logging/UserData;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/UserData;-><init>()V

    .line 433
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getEsn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/logging/UserData;->esn:Ljava/lang/String;

    .line 434
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/DeviceCategory;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/logging/UserData;->deviceCategory:Ljava/lang/String;

    .line 435
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getUserCredentialRegistry()Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;->getNetflixID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/logging/UserData;->netflixId:Ljava/lang/String;

    .line 436
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getUserCredentialRegistry()Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;->getSecureNetflixID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/logging/UserData;->secureNetflixId:Ljava/lang/String;

    .line 437
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getAccountOwnerToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/logging/UserData;->accountOwnerToken:Ljava/lang/String;

    .line 438
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getCurrentProfileToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/logging/UserData;->currentProfileToken:Ljava/lang/String;

    .line 440
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getReqCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/logging/UserData;->accountCountry:Ljava/lang/String;

    .line 441
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getGeoCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/logging/UserData;->accountCountry:Ljava/lang/String;

    .line 442
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getCurrentAppLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/logging/UserData;->languages:Ljava/lang/String;

    .line 444
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    const-string/jumbo v1, "nf_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GetUserData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    return-object v0
.end method

.method private loadConfiguration()V
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->loadSettings(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mSettings:Ljava/util/Map;

    .line 130
    return-void
.end method

.method private onGcmRegistration(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 350
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    const-string/jumbo v0, "nf_push"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGcmRegistration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->gcmRegistrationId:Ljava/lang/String;

    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mGcmRegistered:Z

    .line 357
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->reportOnRegistered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->optedIn:Z

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->report(Z)V

    .line 360
    :cond_1
    return-void
.end method

.method private onGcmUnregistration(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 364
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->gcmRegistrationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "onGcmUnregistration - Same registrration ID"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mGcmRegistered:Z

    .line 370
    return-void

    .line 367
    :cond_0
    const-string/jumbo v0, "nf_push"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGcmUnregistration - Received registration ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is NOT the same as registration ID known to app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->gcmRegistrationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onLogin()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 582
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->isGcmSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 583
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "We can not do anything because device does not support push notifications!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :goto_0
    return-void

    .line 587
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getAccountOwnerToken()Ljava/lang/String;

    move-result-object v1

    .line 588
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getCurrentProfileToken()Ljava/lang/String;

    move-result-object v2

    .line 590
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 591
    const-string/jumbo v0, "nf_push"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onLogin with accountOwnerToken ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mSettings:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    .line 595
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    if-nez v0, :cond_3

    .line 596
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v3, "User was not know from before"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->createNewCurrentUserSettings(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    .line 611
    :cond_2
    :goto_1
    :try_start_0
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "report sGcmInfoEventStartedService: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mGcmInfoEventStartedService:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mGcmInfoEventStartedService:Z

    if-eqz v0, :cond_5

    .line 613
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->reportAndKillService()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 626
    :catch_0
    move-exception v0

    .line 627
    const-string/jumbo v1, "nf_push"

    const-string/jumbo v2, "Check if we are registered already failed!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 599
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iput-boolean v5, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->current:Z

    .line 600
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->currentProfileToken:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 601
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "currentProfile change detected"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->updateCurrentUserSettings(Ljava/lang/String;)V

    .line 604
    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 605
    const-string/jumbo v0, "nf_push"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "User was know from before and he opted in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iget-boolean v2, v2, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->optedIn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 618
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->wasNotificationOptInDisplayed()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 619
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iget-boolean v1, v1, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->optedIn:Z

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/configuration/SettingsConfiguration;->setPushOptInStatus(Landroid/content/Context;Z)V

    .line 620
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->optedIn:Z

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->report(Z)V

    goto/16 :goto_0

    .line 622
    :cond_6
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "onLogin: dont report yet, wasNotificationOptInDisplayed: %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 623
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->wasNotificationOptInDisplayed()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 622
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private declared-synchronized onLogout(Lcom/netflix/mediaclient/service/logging/UserData;)V
    .locals 2

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "User is logging out"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->isGcmSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "We can not do anything because device does not support push notifications!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :goto_0
    monitor-exit p0

    return-void

    .line 297
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, v0, v1, p1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->report(ZZLcom/netflix/mediaclient/service/logging/UserData;)V

    .line 300
    if-eqz p1, :cond_1

    .line 301
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mSettings:Ljava/util/Map;

    iget-object v1, p1, Lcom/netflix/mediaclient/service/logging/UserData;->accountOwnerToken:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    .line 302
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    if-nez v0, :cond_1

    .line 303
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "User is logging out and it was uknown before?"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    new-instance v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    .line 305
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->current:Z

    .line 306
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iget-object v1, p1, Lcom/netflix/mediaclient/service/logging/UserData;->accountOwnerToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->accountOwnerToken:Ljava/lang/String;

    .line 307
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->optedIn:Z

    .line 308
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iget-object v1, p1, Lcom/netflix/mediaclient/service/logging/UserData;->currentProfileToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->currentProfileToken:Ljava/lang/String;

    .line 309
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->oldAppVersion:I

    .line 313
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->saveSettings()V

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    .line 317
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/IrisUtils;->removeNotificationsFromStatusBar(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onMessage(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 472
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "Message received, create notification. Running it on main thread."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mImageLoader:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getMessageId(Landroid/content/Context;)I

    move-result v2

    invoke-static {v0, p1, v1, v2}, Lcom/netflix/mediaclient/service/pushnotification/NotificationFactory;->createNotification(Lcom/netflix/mediaclient/service/NetflixService;Landroid/content/Intent;Lcom/netflix/mediaclient/util/gfx/ImageLoader;I)V

    .line 474
    return-void
.end method

.method private onNotificationBrowserRedirect(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 505
    invoke-static {p1}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->createInstance(Landroid/content/Intent;)Lcom/netflix/mediaclient/service/pushnotification/MessageData;

    move-result-object v0

    .line 506
    if-nez v0, :cond_0

    .line 507
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "Unable to report browser redirect notification since message data are missing!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :goto_0
    return-void

    .line 510
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 511
    const-string/jumbo v1, "nf_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "User browser redirect notification "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getCmpEventLogging()Lcom/netflix/mediaclient/servicemgr/CmpEventLogging;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/pushnotification/UserFeedbackOnReceivedPushNotification;->opened:Lcom/netflix/mediaclient/service/pushnotification/UserFeedbackOnReceivedPushNotification;

    invoke-interface {v1, v0, v2}, Lcom/netflix/mediaclient/servicemgr/CmpEventLogging;->reportUserFeedbackOnReceivedPushNotification(Lcom/netflix/mediaclient/service/pushnotification/MessageData;Lcom/netflix/mediaclient/service/pushnotification/UserFeedbackOnReceivedPushNotification;)V

    .line 517
    const-string/jumbo v0, "nf_push"

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Landroid/content/Intent;)V

    .line 518
    const-string/jumbo v0, "target_url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 520
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 521
    const-string/jumbo v1, "nf_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "URI to be redirected to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_2
    if-eqz v0, :cond_3

    .line 526
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 527
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 529
    const/high16 v0, 0x34000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 530
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 532
    :cond_3
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "URI is missing! Can not open to browser!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private onNotificationCanceled(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "nf_push"

    invoke-static {v0, p1, v1}, Lcom/netflix/mediaclient/util/IrisUtils;->ifNotificationWasCanceledUpdateItsStatus(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 485
    invoke-static {p1}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->createInstance(Landroid/content/Intent;)Lcom/netflix/mediaclient/service/pushnotification/MessageData;

    move-result-object v0

    .line 486
    if-nez v0, :cond_0

    .line 487
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "Unable to report canceled notification since message data are missing!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :goto_0
    return-void

    .line 490
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 491
    const-string/jumbo v1, "nf_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "User canceled notification "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getCmpEventLogging()Lcom/netflix/mediaclient/servicemgr/CmpEventLogging;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/pushnotification/UserFeedbackOnReceivedPushNotification;->canceled:Lcom/netflix/mediaclient/service/pushnotification/UserFeedbackOnReceivedPushNotification;

    invoke-interface {v1, v0, v2}, Lcom/netflix/mediaclient/servicemgr/CmpEventLogging;->reportUserFeedbackOnReceivedPushNotification(Lcom/netflix/mediaclient/service/pushnotification/MessageData;Lcom/netflix/mediaclient/service/pushnotification/UserFeedbackOnReceivedPushNotification;)V

    goto :goto_0
.end method

.method private onNotificationOptIn(Z)V
    .locals 5

    .prologue
    .line 339
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "onNotificationOptIn - user optIn ? %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->validateCurrentUser()V

    .line 342
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->updateSettingsOnOptedIn(Z)V

    .line 343
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/configuration/SettingsConfiguration;->setPushOptInStatus(Landroid/content/Context;Z)V

    .line 345
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->report(Z)V

    .line 346
    return-void
.end method

.method private registerReceiver()V
    .locals 4

    .prologue
    .line 564
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "Register receiver"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.PUSH_ONLOGIN"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.PUSH_ONLOGOUT"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.PUSH_NOTIFICATION_OPTIN"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.PUSH_NOTIFICATION_OPTOUT"

    aput-object v2, v0, v1

    .line 573
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->pushNotificationReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v3, "com.netflix.mediaclient.intent.category.PUSH"

    invoke-static {v1, v2, v3, v0}, Lcom/netflix/mediaclient/util/IntentUtils;->registerSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 574
    return-void
.end method

.method private report(Z)V
    .locals 5

    .prologue
    .line 381
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "report: visibleOptIn:%b, invisibleOptIn:%b"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getGcmInvisibleMsgOptInStatus()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getGcmInvisibleMsgOptInStatus()Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->report(ZZLcom/netflix/mediaclient/service/logging/UserData;)V

    .line 383
    return-void
.end method

.method private report(ZZLcom/netflix/mediaclient/service/logging/UserData;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 404
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->isGcmSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 405
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "We can not report anything if device does not support push notifications!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    if-nez p3, :cond_2

    .line 410
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "Gets user data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getUserData()Lcom/netflix/mediaclient/service/logging/UserData;

    .line 416
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->gcmRegistrationId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 417
    iput-boolean v5, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->reportOnRegistered:Z

    .line 418
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "can\'t report yet.. wait for registration to finish.. optIn:%b,  gcmInfoOptIn:%b"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 413
    :cond_2
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "Use given user data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 424
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getCustomerEventLogging()Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->gcmRegistrationId:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;->reportNotificationOptIn(ZZLjava/lang/String;)V

    goto :goto_0
.end method

.method private saveSettings()V
    .locals 3

    .prologue
    .line 325
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mSettings:Ljava/util/Map;

    .line 326
    if-nez v0, :cond_0

    .line 327
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "This should not happen! Map is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :goto_0
    return-void

    .line 330
    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v2, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$1;

    invoke-direct {v2, p0, v0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$1;-><init>(Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 577
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->pushNotificationReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/IntentUtils;->unregisterSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 578
    return-void
.end method

.method private updateCurrentUserSettings(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 223
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iput-object p1, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->currentProfileToken:Ljava/lang/String;

    .line 224
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->timestamp:J

    .line 225
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mSettings:Ljava/util/Map;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->accountOwnerToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mSettings:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->saveSettings(Landroid/content/Context;Ljava/util/Map;)V

    .line 227
    return-void
.end method

.method private updateSettingsOnOptedIn(Z)V
    .locals 3

    .prologue
    .line 246
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    if-nez v0, :cond_0

    .line 247
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "User is NOT logged in, do nothing. We can not register"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iput-boolean p1, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->optedIn:Z

    .line 251
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->optInDisplayed:Z

    .line 253
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    const-string/jumbo v0, "nf_push"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Save user settings "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->saveSettings()V

    goto :goto_0
.end method

.method private validateCurrentUser()V
    .locals 4

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getAccountOwnerToken()Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const-string/jumbo v0, "nf_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "accountOwnerToken ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "accountOwnerToken ID is empty! This should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_1
    :goto_0
    return-void

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->accountOwnerToken:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 195
    :cond_3
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v2, "We DO NOT have user! Try to find it from settings"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    if-eqz v0, :cond_4

    .line 197
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->current:Z

    .line 199
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mSettings:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    .line 200
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    if-nez v0, :cond_5

    .line 201
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v2, "User was not know from before"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getCurrentProfileToken()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->createNewCurrentUserSettings(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    goto :goto_0

    .line 204
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->current:Z

    .line 205
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    const-string/jumbo v0, "nf_push"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "User was know from before and he opted in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iget-boolean v2, v2, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->optedIn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 123
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "PNA:: destroy and unregister receiver"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->unregisterReceiver()V

    .line 125
    invoke-super {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;->destroy()V

    .line 126
    return-void
.end method

.method protected doInit()V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->loadConfiguration()V

    .line 110
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->verifyGCM()V

    .line 111
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->registerReceiver()V

    .line 112
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getImageLoader()Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mImageLoader:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    .line 113
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->doGcmRegistration()V

    .line 114
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 115
    return-void
.end method

.method public getGcmRegistrationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->gcmRegistrationId:Ljava/lang/String;

    return-object v0
.end method

.method public handleCommand(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 639
    if-nez p1, :cond_0

    .line 640
    const-string/jumbo v1, "nf_push"

    const-string/jumbo v2, "Intent is null"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :goto_0
    return v0

    .line 644
    :cond_0
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PUSH_NOTIFICATION_GCM_ONREGISTERED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 645
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "Handle registration"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const-string/jumbo v0, "reg_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->onGcmRegistration(Ljava/lang/String;)V

    .line 667
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 647
    :cond_1
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PUSH_NOTIFICATION_GCM_ONUNREGISTERED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 648
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "Handle unregistration"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const-string/jumbo v0, "reg_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->onGcmUnregistration(Ljava/lang/String;)V

    goto :goto_1

    .line 650
    :cond_2
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PUSH_NOTIFICATION_GCM_ONMESSAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 651
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "Handle message"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->onMessage(Landroid/content/Intent;)V

    goto :goto_1

    .line 653
    :cond_3
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NOTIFICATION_CANCELED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 654
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "Handle notification canceled"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->onNotificationCanceled(Landroid/content/Intent;)V

    goto :goto_1

    .line 656
    :cond_4
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NOTIFICATION_BROWSER_REDIRECT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 657
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "Handle notification browser redirect"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->onNotificationBrowserRedirect(Landroid/content/Intent;)V

    goto :goto_1

    .line 659
    :cond_5
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NOTIFICATION_MARK_AS_READ"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 660
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "Handle notification respond mark as read redirect"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->markAsRead(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 663
    :cond_6
    const-string/jumbo v1, "nf_push"

    const-string/jumbo v2, "Uknown command!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public informServiceStartedOnGcmInfo()V
    .locals 2

    .prologue
    .line 705
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "noting that gcmInfoEvent started NetflixService"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mGcmInfoEventStartedService:Z

    .line 707
    return-void
.end method

.method public isGcmSupported()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mGcmSupported:Z

    return v0
.end method

.method public isOptIn()Z
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->optedIn:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mGcmSupported:Z

    return v0
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->isGcmSupported()Z

    move-result v0

    return v0
.end method

.method public markAsRead(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 716
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "markAsRead"

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 717
    const-string/jumbo v0, "g"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 718
    new-instance v1, Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->markNotificationAsRead(Lcom/netflix/model/leafs/social/IrisNotificationSummary;)V

    .line 720
    return-void
.end method

.method public reportAndKillService()V
    .locals 4

    .prologue
    .line 387
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "Telling back-end to stop sending gcm info events"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->optedIn:Z

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->report(Z)V

    .line 392
    :cond_0
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "Stopping NetflixService in 30000"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/service/NetflixService;->requestServiceShutdownAfterDelay(J)V

    .line 394
    return-void
.end method

.method public verifyGCM()V
    .locals 2

    .prologue
    .line 148
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gcm/GCMRegistrar;->checkDevice(Landroid/content/Context;)V

    .line 149
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "Device supports GCM"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mGcmSupported:Z

    .line 167
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "Device does NOT supports GCM"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public wasNotificationOptInDisplayed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 267
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mGcmSupported:Z

    if-nez v1, :cond_0

    .line 268
    const-string/jumbo v1, "nf_push"

    const-string/jumbo v2, "Device is NOT GCM registered, do not display notification! That is why true is returned"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :goto_0
    return v0

    .line 272
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->validateCurrentUser()V

    .line 273
    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    if-nez v1, :cond_1

    .line 274
    const-string/jumbo v1, "nf_push"

    const-string/jumbo v2, "Current user is empty. Do NOT display opt in dialog!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 277
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 278
    const-string/jumbo v0, "nf_push"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Current user was displayed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iget-boolean v2, v2, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->optInDisplayed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->optInDisplayed:Z

    goto :goto_0
.end method
