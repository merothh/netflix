.class public final Lcom/netflix/mediaclient/service/logging/LegacyCustomerEventLoggingImpl;
.super Ljava/lang/Object;
.source "LegacyCustomerEventLoggingImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_log"

.field private static final TAG_PUSH:Ljava/lang/String; = "nf_push"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMdxLoggingManager:Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxLoggingManager;

.field private mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

.field private mWorkerHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/LoggingAgent;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/LegacyCustomerEventLoggingImpl;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/LegacyCustomerEventLoggingImpl;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/LegacyCustomerEventLoggingImpl;->mWorkerHandler:Landroid/os/Handler;

    new-instance v0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxLoggingManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LegacyCustomerEventLoggingImpl;->mWorkerHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/LegacyCustomerEventLoggingImpl;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxLoggingManager;-><init>(Landroid/os/Handler;Lcom/netflix/mediaclient/service/logging/LoggingAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/LegacyCustomerEventLoggingImpl;->mMdxLoggingManager:Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxLoggingManager;

    return-void
.end method

.method private getUserData()Lcom/netflix/mediaclient/service/logging/UserData;
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/logging/UserData;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/UserData;-><init>()V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LegacyCustomerEventLoggingImpl;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getEsn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/logging/UserData;->esn:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LegacyCustomerEventLoggingImpl;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/DeviceCategory;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/logging/UserData;->deviceCategory:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LegacyCustomerEventLoggingImpl;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getUser()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getUserCredentialRegistry()Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;->getNetflixID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/logging/UserData;->netflixId:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LegacyCustomerEventLoggingImpl;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getUser()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getUserCredentialRegistry()Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;->getSecureNetflixID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/logging/UserData;->secureNetflixId:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LegacyCustomerEventLoggingImpl;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getAccountOwnerToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/logging/UserData;->accountOwnerToken:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LegacyCustomerEventLoggingImpl;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getUser()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LegacyCustomerEventLoggingImpl;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getUser()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/logging/UserData;->currentProfileToken:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LegacyCustomerEventLoggingImpl;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getUser()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/logging/UserData;->currentProfileGuid:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LegacyCustomerEventLoggingImpl;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getUser()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getReqCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/logging/UserData;->accountCountry:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LegacyCustomerEventLoggingImpl;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getUser()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getGeoCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/logging/UserData;->accountCountry:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LegacyCustomerEventLoggingImpl;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getUser()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getCurrentAppLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/logging/UserData;->languages:Ljava/lang/String;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_1
    return-object v0
.end method


# virtual methods
.method public logMdxPlaybackStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LegacyCustomerEventLoggingImpl;->mMdxLoggingManager:Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxLoggingManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LegacyCustomerEventLoggingImpl;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getUser()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxLoggingManager;->logPlaybackStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V

    return-void
.end method

.method public logMdxTarget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LegacyCustomerEventLoggingImpl;->mMdxLoggingManager:Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxLoggingManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LegacyCustomerEventLoggingImpl;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getUser()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxLoggingManager;->logTarget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V

    return-void
.end method

.method public logMdxTargetSelection(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LegacyCustomerEventLoggingImpl;->mMdxLoggingManager:Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxLoggingManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LegacyCustomerEventLoggingImpl;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getUser()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxLoggingManager;->logTargetSelection(Ljava/lang/String;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V

    return-void
.end method

.method public reportApplicationLaunchedFromDeepLinking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/LaunchedFromDeepLink;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LegacyCustomerEventLoggingImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/LegacyCustomerEventLoggingImpl;->getUserData()Lcom/netflix/mediaclient/service/logging/UserData;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/LaunchedFromDeepLink;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/logging/UserData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "Execute reportApplicationLaunchFromDeepLinking beacon..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "reportApplicationLaunchedFromDeepLinking - Beacon send in background"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reportMdpFromDeepLinking(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdpFromDeepLink;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LegacyCustomerEventLoggingImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/LegacyCustomerEventLoggingImpl;->getUserData()Lcom/netflix/mediaclient/service/logging/UserData;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdpFromDeepLink;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/logging/UserData;Ljava/lang/String;)V

    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "Execute reportMdpFromDeepLinking beacon..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "reportMdpFromDeepLinking - Beacon send in background"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reportNotificationOptIn(ZZLjava/lang/String;)V
    .locals 6

    new-instance v0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/NotificationOptIn;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LegacyCustomerEventLoggingImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/LegacyCustomerEventLoggingImpl;->getUserData()Lcom/netflix/mediaclient/service/logging/UserData;

    move-result-object v5

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/NotificationOptIn;-><init>(Landroid/content/Context;ZZLjava/lang/String;Lcom/netflix/mediaclient/service/logging/UserData;)V

    const-string/jumbo v1, "nf_push"

    const-string/jumbo v2, "Execute opt in beacon... %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "reportNotificationOptIn - Beacon send in background"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
