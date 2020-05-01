.class public final Lcom/netflix/mediaclient/service/logging/LegacyCmpEventLoggingImpl;
.super Ljava/lang/Object;
.source "LegacyCmpEventLoggingImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/CmpEventLogging;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_log"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/LoggingAgent;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/LegacyCmpEventLoggingImpl;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    .line 36
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/LegacyCmpEventLoggingImpl;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method private getUserData()Lcom/netflix/mediaclient/service/logging/UserData;
    .locals 4

    .prologue
    .line 53
    new-instance v0, Lcom/netflix/mediaclient/service/logging/UserData;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/UserData;-><init>()V

    .line 54
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LegacyCmpEventLoggingImpl;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getEsn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/logging/UserData;->esn:Ljava/lang/String;

    .line 55
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LegacyCmpEventLoggingImpl;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/DeviceCategory;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/logging/UserData;->deviceCategory:Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LegacyCmpEventLoggingImpl;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getUser()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v1

    .line 58
    if-nez v1, :cond_1

    .line 59
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "User agent should not be null here!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v0, 0x0

    .line 82
    :cond_0
    :goto_0
    return-object v0

    .line 63
    :cond_1
    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getUserCredentialRegistry()Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    move-result-object v2

    .line 64
    if-eqz v2, :cond_2

    .line 65
    invoke-interface {v2}, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;->getNetflixID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/netflix/mediaclient/service/logging/UserData;->netflixId:Ljava/lang/String;

    .line 66
    invoke-interface {v2}, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;->getSecureNetflixID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/netflix/mediaclient/service/logging/UserData;->secureNetflixId:Ljava/lang/String;

    .line 68
    :cond_2
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/LegacyCmpEventLoggingImpl;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getAccountOwnerToken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/netflix/mediaclient/service/logging/UserData;->accountOwnerToken:Ljava/lang/String;

    .line 69
    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v2

    .line 70
    if-eqz v2, :cond_3

    .line 71
    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileToken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/netflix/mediaclient/service/logging/UserData;->currentProfileToken:Ljava/lang/String;

    .line 74
    :cond_3
    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getReqCountry()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/netflix/mediaclient/service/logging/UserData;->accountCountry:Ljava/lang/String;

    .line 75
    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getGeoCountry()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/netflix/mediaclient/service/logging/UserData;->accountCountry:Ljava/lang/String;

    .line 76
    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getCurrentAppLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/logging/UserData;->languages:Ljava/lang/String;

    .line 78
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    const-string/jumbo v1, "nf_log"

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

    goto :goto_0
.end method


# virtual methods
.method public reportUserFeedbackOnReceivedPushNotification(Lcom/netflix/mediaclient/service/pushnotification/MessageData;Lcom/netflix/mediaclient/service/pushnotification/UserFeedbackOnReceivedPushNotification;)V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LegacyCmpEventLoggingImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/LegacyCmpEventLoggingImpl;->getUserData()Lcom/netflix/mediaclient/service/logging/UserData;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/netflix/mediaclient/service/logging/cmpevents/legacy/NotificationFeedback;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/MessageData;Lcom/netflix/mediaclient/service/pushnotification/UserFeedbackOnReceivedPushNotification;Lcom/netflix/mediaclient/service/logging/UserData;)V

    .line 43
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "Execute feedback beacon..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v1, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    .line 45
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "reportUserFeedbackOnReceivedPushNotification - Beacon send in background"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method
