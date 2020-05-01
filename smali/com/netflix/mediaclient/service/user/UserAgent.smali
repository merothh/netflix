.class public Lcom/netflix/mediaclient/service/user/UserAgent;
.super Lcom/netflix/mediaclient/service/ServiceAgent;
.source "UserAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;
.implements Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;
.implements Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;


# static fields
.field private static final ACTIVATE:Ljava/lang/String; = "activate"

.field private static final ACTIVATE_COMPLETE:Ljava/lang/String; = "activateComplete"

.field private static final APP_RESET_Required:Ljava/lang/String; = "appResetRequired"

.field private static final BIND:Ljava/lang/String; = "bind"

.field private static final DEACTIVATED:Ljava/lang/String; = "deactivated"

.field private static final TAG:Ljava/lang/String; = "nf_service_useragent"


# instance fields
.field private final commonProfilesUpdateCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

.field private final configDataCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

.field private isProfileSwitchingDisabled:Z

.field private localeSupportStatus:Lcom/netflix/mediaclient/android/app/Status;

.field private mAccountErrorReceiver:Lcom/netflix/mediaclient/service/user/UserAgent$AccountErrorReceiver;

.field private mActivateListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

.field private mAppResetListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

.field private mBindListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

.field private mCurrentUserAccount:Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

.field private mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

.field private mDeactivateListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

.field private mDynecomNetflixId:Ljava/lang/String;

.field private mDynecomSecureNetflixId:Ljava/lang/String;

.field private mIsNonMemberPlayback:Z

.field private mListOfUserProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mLoginCallback:Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;

.field private mLogoutCallback:Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;

.field private mNrdp:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

.field private mPlayStopReceiver:Lcom/netflix/mediaclient/service/user/UserAgent$PlayStopReceiver;

.field private mRegistration:Lcom/netflix/mediaclient/javabridge/ui/Registration;

.field private mSubtitleDefaults:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

.field private mSubtitleSettings:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

.field private mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

.field private mUserAgentStateManager:Lcom/netflix/mediaclient/service/user/UserAgentStateManager;

.field private mUserWebClient:Lcom/netflix/mediaclient/service/user/UserWebClient;

.field private userLocaleRepository:Lcom/netflix/mediaclient/service/user/UserLocaleRepository;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;-><init>()V

    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->localeSupportStatus:Lcom/netflix/mediaclient/android/app/Status;

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/user/UserAgent$5;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->commonProfilesUpdateCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/user/UserAgent$6;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->configDataCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    return-void
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgent;->extractToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserAgentStateManager;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUserAgentStateManager:Lcom/netflix/mediaclient/service/user/UserAgentStateManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserWebClient;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUserWebClient:Lcom/netflix/mediaclient/service/user/UserWebClient;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/service/user/UserAgent;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mListOfUserProfiles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mListOfUserProfiles:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/webclient/model/leafs/User;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/webclient/model/leafs/User;)Lcom/netflix/mediaclient/service/webclient/model/leafs/User;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mSubtitleDefaults:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->persistListOfUserProfiles(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/webclient/model/leafs/User;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->persistUser(Lcom/netflix/mediaclient/service/webclient/model/leafs/User;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/netflix/mediaclient/service/user/UserAgent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->isAccountDataAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->isLatestProfileDataValid(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->updateAndPersistProfilesList(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/netflix/mediaclient/service/user/UserAgent;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->setUserPreferredLanguages([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2302(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mSubtitleSettings:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->setCurrentUserProfile(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->persistCurrentProfileGuid(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->checkCurrentProfileTypeWasChanged(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->commonProfilesUpdateCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->launchWebTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->transferUserCookiesIntoNrmConfig()V

    return-void
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->notifyLoginComplete(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/user/UserAgent;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mDynecomNetflixId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/service/user/UserAgent;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mDynecomSecureNetflixId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mLoginCallback:Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;

    return-object v0
.end method

.method static synthetic access$802(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mLoginCallback:Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;

    return-object p1
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mLogoutCallback:Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;

    return-object v0
.end method

.method static synthetic access$902(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mLogoutCallback:Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;

    return-object p1
.end method

.method private buildListOfUserProfiles(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_service_useragent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "populateListOfUserProfiles with json "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "useragent_current_userprofile_guid"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_4

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-direct {v5, v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "nf_service_useragent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "has userprofile "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    if-nez v4, :cond_3

    invoke-virtual {v5}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iput-object v5, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "nf_service_useragent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "error while populateListOfUserProfiles "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private buildNewNrmConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;
    .locals 7

    const/4 v5, 0x1

    new-instance v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;-><init>()V

    iput-boolean v5, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;->isUserBound:Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getNrmConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;

    move-result-object v2

    const-string/jumbo v3, "nf_service_useragent"

    const-string/jumbo v4, "transferUserCookiesIntoNrmConfig - bf4- netflixId: %s"

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    if-eqz v2, :cond_1

    iget-object v0, v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;->netflixId:Ljava/lang/String;

    :goto_0
    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mDynecomNetflixId:Ljava/lang/String;

    iput-object v0, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;->netflixId:Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mDynecomSecureNetflixId:Ljava/lang/String;

    iput-object v0, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;->secureNetflixId:Ljava/lang/String;

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mDynecomNetflixId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mDynecomNetflixId:Ljava/lang/String;

    iget-object v3, v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;->netflixId:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mDynecomNetflixId:Ljava/lang/String;

    iput-object v0, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;->netflixId:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mDynecomSecureNetflixId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mDynecomSecureNetflixId:Ljava/lang/String;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;->secureNetflixId:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mDynecomSecureNetflixId:Ljava/lang/String;

    iput-object v0, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;->secureNetflixId:Ljava/lang/String;

    goto :goto_1
.end method

.method private checkCurrentProfileTypeWasChanged(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileType()Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileType()Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "Current profile type changed - sending REFRESH_HOME intent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.REFRESH_HOME_LOLOMO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finishAllActivities(Landroid/content/Context;)V

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->isActivityVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "Application is currently in foreground - restarting profiles gate"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->createStartIntentSingleTop(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private doLoginComplete()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v0, v2, v1, v2}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportSignInRequestSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->OK:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->notifyLoginComplete(Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getApplication()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->setSignedInOnce()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "nf_user_status_loggedin"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    return-void
.end method

.method private doLogoutComplete()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->OK:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->notifyLogoutComplete(Lcom/netflix/mediaclient/StatusCode;)V

    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "Logout complete"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getBreadcrumbLogging()Lcom/netflix/mediaclient/servicemgr/BreadcrumbLogging;

    move-result-object v0

    const-string/jumbo v1, "Logout complete"

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/BreadcrumbLogging;->leaveBreadcrumb(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    iput-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mListOfUserProfiles:Ljava/util/List;

    iput-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    iput-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mSubtitleSettings:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    iput-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mSubtitleDefaults:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    new-instance v0, Lcom/netflix/mediaclient/util/NetflixPreference;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "useragent_userprofiles_data"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    const-string/jumbo v1, "useragent_user_data"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    const-string/jumbo v1, "useragent_current_userprofile_guid"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    const-string/jumbo v1, "nf_user_status_loggedin"

    invoke-virtual {v0, v1, v3}, Lcom/netflix/mediaclient/util/NetflixPreference;->putBooleanPref(Ljava/lang/String;Z)Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/service/user/PartnerReceiver;->broadcastUserStatus(Landroid/content/Context;Z)V

    const-string/jumbo v1, "user_profile_was_selected"

    invoke-virtual {v0, v1, v3}, Lcom/netflix/mediaclient/util/NetflixPreference;->putBooleanPref(Ljava/lang/String;Z)Z

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->commit()Z

    return-void
.end method

.method private extractToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_service_useragent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Extracting token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_1

    const-string/jumbo v2, ";"

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-le v2, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleAutoLogin(Landroid/content/Intent;)V
    .locals 4

    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "Handle autologin"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "token"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "Token not found, autologin is not possible"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "nf_service_useragent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Execute autologin with token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    if-eqz v1, :cond_2

    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "User is already logged in, autologin is NOT possible!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->autologin:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportSignInRequestSessionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUserWebClient:Lcom/netflix/mediaclient/service/user/UserWebClient;

    new-instance v2, Lcom/netflix/mediaclient/service/user/UserAgent$8;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/service/user/UserAgent$8;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;)V

    invoke-interface {v1, v0, v2}, Lcom/netflix/mediaclient/service/user/UserWebClient;->autoLogin(Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    goto :goto_0
.end method

.method private handleCreateAutoLoginToken(Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "You can not create auto login token in production!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private isAccountDataAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mListOfUserProfiles:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mListOfUserProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLatestProfileDataValid(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getCurrentProfileGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchTask(Lcom/netflix/mediaclient/service/user/UserAgent$FetchTask;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/user/UserAgent$FetchTask",
            "<*>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_service_useragent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Launching task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUserWebClient:Lcom/netflix/mediaclient/service/user/UserWebClient;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserWebClient;->isSynchronous()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/user/UserAgent$FetchTask;->run()V

    goto :goto_0
.end method

.method private launchWebTask(Ljava/lang/Runnable;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_service_useragent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Launching task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUserWebClient:Lcom/netflix/mediaclient/service/user/UserWebClient;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserWebClient;->isSynchronous()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private notifyLoginComplete(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/user/UserAgent$2;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent$2;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifyLogoutComplete(Lcom/netflix/mediaclient/StatusCode;)V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/user/UserAgent$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/user/UserAgent$3;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifyOtherOfProfileActivated()V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents;->signalProfileActive(Landroid/content/Context;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PUSH_ONLOGIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.PUSH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getBreadcrumbLogging()Lcom/netflix/mediaclient/servicemgr/BreadcrumbLogging;

    move-result-object v0

    const-string/jumbo v1, "Login complete"

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/BreadcrumbLogging;->leaveBreadcrumb(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/user/PartnerReceiver;->broadcastUserStatus(Landroid/content/Context;Z)V

    return-void
.end method

.method private persistCurrentProfileGuid(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_service_useragent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "persistCurrentProfileGuid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "useragent_current_userprofile_guid"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "useragent_current_userprofile_guid"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->removePref(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private persistListOfUserProfiles(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "nf_service_useragent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "persistListOfUserProfiles "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "useragent_userprofiles_data"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private persistUser(Lcom/netflix/mediaclient/service/webclient/model/leafs/User;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_service_useragent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "persistUser "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "useragent_user_data"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private populateUser(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/User;
    .locals 4

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_service_useragent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "populateUser with json "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "nf_service_useragent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "has user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private registerAccountErrorReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.DELETED_PROFILE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mAccountErrorReceiver:Lcom/netflix/mediaclient/service/user/UserAgent$AccountErrorReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private registerPlayStopReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOCAL_PLAYER_PLAY_STOP"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mPlayStopReceiver:Lcom/netflix/mediaclient/service/user/UserAgent$PlayStopReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setCurrentUserProfile(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    return-void
.end method

.method private setUserPreferredLanguages([Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->joinArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->userLocaleRepository:Lcom/netflix/mediaclient/service/user/UserLocaleRepository;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->setPreferredLanguages(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getNrdController()Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->userLocaleRepository:Lcom/netflix/mediaclient/service/user/UserLocaleRepository;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->getCurrentAppLocale()Lcom/netflix/mediaclient/util/l10n/UserLocale;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NrdController;->setDeviceLocale(Ljava/util/Locale;)V

    return-void
.end method

.method private transferUserCookiesIntoNrmConfig()V
    .locals 5

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->buildNewNrmConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->persistNrmConfigData(Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;)V

    const-string/jumbo v1, "nf_service_useragent"

    const-string/jumbo v2, "transferUserCookiesIntoNrmConfig - aftr - netflixId: %s, mDynecomNetflixId: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;->netflixId:Ljava/lang/String;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mDynecomNetflixId:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method private unregisterAccountErrorReceiver()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mAccountErrorReceiver:Lcom/netflix/mediaclient/service/user/UserAgent$AccountErrorReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "nf_service_useragent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterAccountErrorReceiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterPlayStopReceiver()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mPlayStopReceiver:Lcom/netflix/mediaclient/service/user/UserAgent$PlayStopReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "nf_service_useragent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterPlayStopReceiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateAndPersistProfilesList(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mListOfUserProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mListOfUserProfiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mListOfUserProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mListOfUserProfiles:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->persistListOfUserProfiles(Ljava/util/List;)V

    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private verifyLoginViaDynecom(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$1;

    invoke-direct {v0, p0, p3}, Lcom/netflix/mediaclient/service/user/UserAgent$1;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1, p1, p2, v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->verifyLoginViaDynecom(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V

    return-void
.end method


# virtual methods
.method public addWebUserProfile(Ljava/lang/String;ZLjava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V
    .locals 6

    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "addWebUserProfile"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$AddWebUserProfilesTask;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/user/UserAgent$AddWebUserProfilesTask;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/String;ZLjava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->launchWebTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public consumeUmaAlert()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getUserMessageAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_service_useragent"

    const-string/jumbo v2, "UMA marked as consumed"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->setConsumed(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->persistUser(Lcom/netflix/mediaclient/service/webclient/model/leafs/User;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "RefreshUserMessageRequest.ACTION_UMA_MESSAGE_CONSUMED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_1
    return-void
.end method

.method public createAutoLoginToken(JLcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V
    .locals 3

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Callback can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "Create auto login token"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$CreateAutoLoginTokenTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/user/UserAgent$CreateAutoLoginTokenTask;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;JLcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->launchTask(Lcom/netflix/mediaclient/service/user/UserAgent$FetchTask;)V

    return-void
.end method

.method public destroy()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mRegistration:Lcom/netflix/mediaclient/javabridge/ui/Registration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mRegistration:Lcom/netflix/mediaclient/javabridge/ui/Registration;

    const-string/jumbo v1, "activateComplete"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mActivateListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/Registration;->removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mRegistration:Lcom/netflix/mediaclient/javabridge/ui/Registration;

    const-string/jumbo v1, "activate"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mActivateListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/Registration;->removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mRegistration:Lcom/netflix/mediaclient/javabridge/ui/Registration;

    const-string/jumbo v1, "deactivated"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mDeactivateListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/Registration;->removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mRegistration:Lcom/netflix/mediaclient/javabridge/ui/Registration;

    const-string/jumbo v1, "bind"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mBindListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/Registration;->removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mRegistration:Lcom/netflix/mediaclient/javabridge/ui/Registration;

    const-string/jumbo v1, "appResetRequired"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mAppResetListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/Registration;->removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->userLocaleRepository:Lcom/netflix/mediaclient/service/user/UserLocaleRepository;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->unregisterPlayStopReceiver()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->unregisterAccountErrorReceiver()V

    invoke-super {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;->destroy()V

    return-void
.end method

.method public doDummyWebCall(Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$DoDummyWebCallTask;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent$DoDummyWebCallTask;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->launchWebTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public doInit()V
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->refreshProfileSwitchingStatus()V

    iput-object v4, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserAccount:Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    iput-object v4, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    iput-object v4, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mSubtitleSettings:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$PlayStopReceiver;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/user/UserAgent$PlayStopReceiver;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mPlayStopReceiver:Lcom/netflix/mediaclient/service/user/UserAgent$PlayStopReceiver;

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$AccountErrorReceiver;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/user/UserAgent$AccountErrorReceiver;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mAccountErrorReceiver:Lcom/netflix/mediaclient/service/user/UserAgent$AccountErrorReceiver;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "useragent_userprofiles_data"

    invoke-static {v0, v1, v4}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getApplication()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/NetflixApplication;->setSignedInOnce()V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->buildListOfUserProfiles(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mListOfUserProfiles:Ljava/util/List;

    invoke-static {}, Lcom/netflix/mediaclient/media/BookmarkStore;->getInstance()Lcom/netflix/mediaclient/media/BookmarkStore;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mListOfUserProfiles:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/media/BookmarkStore;->updateValidProfiles(Ljava/util/List;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "useragent_user_data"

    invoke-static {v0, v1, v4}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->populateUser(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->getSubtitleDefaults()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->buildSubtitleSettings(Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mSubtitleDefaults:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getApiNextWebClient()Lcom/netflix/mediaclient/service/webclient/WebClient;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/user/UserWebClientFactory;->create(Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/service/webclient/WebClient;)Lcom/netflix/mediaclient/service/user/UserWebClient;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUserWebClient:Lcom/netflix/mediaclient/service/user/UserWebClient;

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->userLocaleRepository:Lcom/netflix/mediaclient/service/user/UserLocaleRepository;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->getRawDeviceLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "nf_service_useragent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Current device locale as raw user locale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->userLocaleRepository:Lcom/netflix/mediaclient/service/user/UserLocaleRepository;

    new-instance v2, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    invoke-direct {v2, v0}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->setApplicationLanguage(Lcom/netflix/mediaclient/util/l10n/UserLocale;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->shouldAlertForMissingLocale()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->userLocaleRepository:Lcom/netflix/mediaclient/service/user/UserLocaleRepository;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->wasPreviouslyAlerted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->NON_SUPPORTED_LOCALE:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    :goto_0
    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->localeSupportStatus:Lcom/netflix/mediaclient/android/app/Status;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getNrdController()Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->getNrdp()Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mNrdp:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mNrdp:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mNrdp:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->isReady()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->NRD_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "NRDP is NOT READY"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_4
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mNrdp:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->getRegistration()Lcom/netflix/mediaclient/javabridge/ui/Registration;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mRegistration:Lcom/netflix/mediaclient/javabridge/ui/Registration;

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$ActivateListener;

    invoke-direct {v0, p0, v4}, Lcom/netflix/mediaclient/service/user/UserAgent$ActivateListener;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgent$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mActivateListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$DeactivateListener;

    invoke-direct {v0, p0, v4}, Lcom/netflix/mediaclient/service/user/UserAgent$DeactivateListener;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgent$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mDeactivateListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$BindListener;

    invoke-direct {v0, p0, v4}, Lcom/netflix/mediaclient/service/user/UserAgent$BindListener;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgent$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mBindListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$AppResetListener;

    invoke-direct {v0, p0, v4}, Lcom/netflix/mediaclient/service/user/UserAgent$AppResetListener;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgent$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mAppResetListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mRegistration:Lcom/netflix/mediaclient/javabridge/ui/Registration;

    const-string/jumbo v1, "activateComplete"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mActivateListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/Registration;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mRegistration:Lcom/netflix/mediaclient/javabridge/ui/Registration;

    const-string/jumbo v1, "activate"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mActivateListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/Registration;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mRegistration:Lcom/netflix/mediaclient/javabridge/ui/Registration;

    const-string/jumbo v1, "deactivated"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mDeactivateListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/Registration;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mRegistration:Lcom/netflix/mediaclient/javabridge/ui/Registration;

    const-string/jumbo v1, "bind"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mBindListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/Registration;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mRegistration:Lcom/netflix/mediaclient/javabridge/ui/Registration;

    const-string/jumbo v1, "appResetRequired"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mAppResetListener:Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/Registration;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mRegistration:Lcom/netflix/mediaclient/javabridge/ui/Registration;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getDrmManager()Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getErrorLogging()Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    move-result-object v5

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;-><init>(Lcom/netflix/mediaclient/javabridge/ui/Registration;Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/ErrorLogging;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUserAgentStateManager:Lcom/netflix/mediaclient/service/user/UserAgentStateManager;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUserAgentStateManager:Lcom/netflix/mediaclient/service/user/UserAgentStateManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isLogoutRequired()Z

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isEsnMigrationRequired()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->initialize(ZZ)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->registerPlayStopReceiver()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->registerAccountErrorReceiver()V

    goto/16 :goto_1
.end method

.method public doOnRampEligibilityAction(Lcom/netflix/model/leafs/OnRampEligibility$Action;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$DoOnRampEligibilityAction;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgent$DoOnRampEligibilityAction;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/model/leafs/OnRampEligibility$Action;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->launchTask(Lcom/netflix/mediaclient/service/user/UserAgent$FetchTask;)V

    return-void
.end method

.method public editWebUserProfile(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V
    .locals 7

    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "editWebUserProfile"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$EditWebUserProfilesTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/service/user/UserAgent$EditWebUserProfilesTask;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->launchWebTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public fetchAccountData()V
    .locals 2

    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "fetch account level config data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->configDataCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->fetchAccountConfigData(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V

    return-void
.end method

.method public fetchAvailableAvatarsList(Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V
    .locals 2

    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "fetchAvailableAvatarsList"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAvailableAvatarsListTask;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent$FetchAvailableAvatarsListTask;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->launchWebTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public fetchProfileData(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "fetchProfileData"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/netflix/mediaclient/service/user/UserAgent$FetchProfileDataTask;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->launchWebTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public fetchSurvey(Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$FetchSurveyTask;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent$FetchSurveyTask;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->launchTask(Lcom/netflix/mediaclient/service/user/UserAgent$FetchTask;)V

    return-void
.end method

.method public getAccountOwnerToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->getUserToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAllProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mListOfUserProfiles:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentAppLanguage()Ljava/lang/String;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->userLocaleRepository:Lcom/netflix/mediaclient/service/user/UserLocaleRepository;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getLanguagesList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getLanguagesList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v7, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->userLocaleRepository:Lcom/netflix/mediaclient/service/user/UserLocaleRepository;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->getCurrentAppLocale()Lcom/netflix/mediaclient/util/l10n/UserLocale;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->getRaw()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getLanguagesList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->userLocaleRepository:Lcom/netflix/mediaclient/service/user/UserLocaleRepository;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->getCurrentAppLocale()Lcom/netflix/mediaclient/util/l10n/UserLocale;

    move-result-object v2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v3, "nf_service_useragent"

    const-string/jumbo v4, "nf_loc userPref:%s appLocaleRaw:%s - picking %s"

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->getRaw()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {v2}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->getRaw()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v7

    const/4 v6, 0x2

    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->equalsByLanguage(Lcom/netflix/mediaclient/util/l10n/UserLocale;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->getRaw()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->equalsByLanguage(Lcom/netflix/mediaclient/util/l10n/UserLocale;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->getRaw()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->getRaw()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->getRaw()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentAppLocale()Lcom/netflix/mediaclient/util/l10n/UserLocale;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->userLocaleRepository:Lcom/netflix/mediaclient/service/user/UserLocaleRepository;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->getCurrentAppLocale()Lcom/netflix/mediaclient/util/l10n/UserLocale;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentProfile()Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    return-object v0
.end method

.method public bridge synthetic getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getCurrentProfile()Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentProfileEmail()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "getCurrentProfileEmail called"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    if-nez v0, :cond_0

    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "getCurrentProfileEmail  is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getEmail()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentProfileFirstName()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "getCurrentProfileFirstName called"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    if-nez v0, :cond_0

    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "getCurrentProfileFirstName is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getFirstName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentProfileGuid()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "getCurrentProfileGuid called"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentProfileLastName()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "getCurrentProfileLastName called"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    if-nez v0, :cond_0

    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "getCurrentProfileLastName is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getLastName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentProfileToken()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    if-nez v0, :cond_0

    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "currentProfile is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->getEmail()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->eogAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGeoCountry()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    if-nez v0, :cond_0

    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "getGeoCountry is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getGeoCountry()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMSLUserCredentialRegistry()Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$9;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/user/UserAgent$9;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;)V

    return-object v0
.end method

.method public getNetflixID()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->isUserLoggedIn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getNrmConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getNrmConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;

    move-result-object v0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;->netflixId:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserAccount:Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;->getNetflixId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetflixIdName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/webapi/WebApiCommand;->getNetflixIdName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryProfileGuid()Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "getPrimaryProfileGuid"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mListOfUserProfiles:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mListOfUserProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    const-string/jumbo v2, "nf_service_useragent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPrimaryProfileGuid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getFirstName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->isPrimaryProfile()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getReqCountry()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    if-nez v0, :cond_0

    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "getReqCountry is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getReqCountry()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSecureNetflixID()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->isUserLoggedIn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getNrmConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getNrmConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;

    move-result-object v0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;->secureNetflixId:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserAccount:Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;->getSecureId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSecureNetflixIdName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/webapi/WebApiCommand;->getSecureNetflixIdName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitleDefaults()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mSubtitleDefaults:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    return-object v0
.end method

.method public getUserCredentialRegistry()Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;
    .locals 0

    return-object p0
.end method

.method public getUserMessageAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getCurrentProfile()Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/kids/KidsUtils;->isKidsProfile(Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->getUmaAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v0

    goto :goto_0
.end method

.method public getUserSubtitlePreferences()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mSubtitleSettings:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    return-object v0
.end method

.method public handleCommand(Landroid/content/Intent;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v1, "nf_service_useragent"

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

    const-string/jumbo v2, "nf_service_useragent"

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
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.USER_AUTOLOGIN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->handleAutoLogin(Landroid/content/Intent;)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.USER_CREATE_AUTOLOGIN_TOKEN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->handleCreateAutoLoginToken(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "nf_service_useragent"

    const-string/jumbo v2, "Uknown command!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public initialized(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->localeSupportStatus:Lcom/netflix/mediaclient/android/app/Status;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->localeSupportStatus:Lcom/netflix/mediaclient/android/app/Status;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public isAgeVerified()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->isAgeVerified()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCurrentProfileIQEnabled()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    if-nez v1, :cond_0

    const-string/jumbo v1, "nf_service_useragent"

    const-string/jumbo v2, "isCurrentProfileIQEnabled is null"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "nf_service_useragent"

    const-string/jumbo v2, "isCurrentProfileIQEnabled %s called: %b "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getFirstName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->isIQEnabled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->isIQEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public isNonMemberPlayback()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mIsNonMemberPlayback:Z

    return v0
.end method

.method public isPotentialPrivacyViolationFoundForLogging(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/PrivacyUtils;->isPotentialPrivacyViolationFound(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/user/User;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_service_useragent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Privacy violation for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " found with current user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mListOfUserProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/PrivacyUtils;->isPotentialPrivacyViolationFound(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "nf_service_useragent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Privacy violation for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " found with profile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "Privacy violatoon NOT found, value can be logged safely."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProfileSwitchingDisabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->isProfileSwitchingDisabled:Z

    return v0
.end method

.method public isUserLoggedIn()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserAccount:Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loginUser(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V
    .locals 4

    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "loginUser activateAccByEmailPassword"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUserAgentStateManager:Lcom/netflix/mediaclient/service/user/UserAgentStateManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->NRD_ERROR:Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "UserAgent: activateAccByEmailPassword fails, UserAgentStateManager is null"

    const/4 v2, 0x1

    sget-object v3, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->clientFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/StatusUtils;->createStatus(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;ZLcom/netflix/mediaclient/service/logging/client/model/RootCause;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->notifyLoginComplete(Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isDynecomSignInEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "Login via Dynecom"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/user/UserAgent;->verifyLoginViaDynecom(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V

    :cond_1
    iput-object p3, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mLoginCallback:Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "Login via NCCP"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUserAgentStateManager:Lcom/netflix/mediaclient/service/user/UserAgentStateManager;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->activateAccByEmailPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->NRD_REGISTRATION_EXISTS:Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "UserAgent: activateAccByEmailPassword fails, NRD registration exist"

    const/4 v2, 0x0

    sget-object v3, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->clientFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/StatusUtils;->createStatus(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;ZLcom/netflix/mediaclient/service/logging/client/model/RootCause;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->notifyLoginComplete(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public logoutUser()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->logoutUser(Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V

    return-void
.end method

.method public logoutUser(Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V
    .locals 3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "Can\'t log user out because agent has not been initialized!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mLogoutCallback:Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->onUserLogout()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/voip/VoipAuthorizationTokensUpdater;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/voip/VoipAuthorizationTokensUpdater;->removeUserAuthorizationTokens()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->isUserLoggedIn()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->OK:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->notifyLogoutComplete(Lcom/netflix/mediaclient/StatusCode;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PUSH_ONLOGOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.PUSH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "uid"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/NetflixService;->getAccountOwnerToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "nid"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getNetflixID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "sid"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getSecureNetflixID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "esn"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getEsn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "device_cat"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/util/DeviceCategory;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "uid"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/NetflixService;->getCurrentProfileToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUserAgentStateManager:Lcom/netflix/mediaclient/service/user/UserAgentStateManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->signoutAcc()V

    goto/16 :goto_0
.end method

.method public markSurveysAsRead()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$MarkSurveysAsReadTask;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/user/UserAgent$MarkSurveysAsReadTask;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->launchTask(Lcom/netflix/mediaclient/service/user/UserAgent$FetchTask;)V

    return-void
.end method

.method public profileActivated(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;)V
    .locals 4

    const/4 v3, 0x0

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserAccount:Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mListOfUserProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->setCurrentUserProfile(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->persistCurrentProfileGuid(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->refresh(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)V

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->refresh()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getSubtitlePreference()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getCurrentProfile()Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getSubtitlePreference()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->buildSubtitleSettings(Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mSubtitleSettings:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getLanguages()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->setUserPreferredLanguages([Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->notifyOtherOfProfileActivated()V

    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "profileActivated cannot find profileId"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v1, "Activated ProfileId not found in list of user profiles: "

    const-string/jumbo v2, "nf_service_useragent"

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getErrorLogging()Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/ErrorLogging;->logHandledException(Ljava/lang/String;)V

    :cond_3
    iput-object v3, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    iput-object v3, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mSubtitleSettings:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    goto :goto_0
.end method

.method public profileInactive()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mSubtitleSettings:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents;->signalProfileDeactivated(Landroid/content/Context;)V

    return-void
.end method

.method public readyToSelectProfile()V
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents;->signalProfileReady2Select(Landroid/content/Context;)V

    return-void
.end method

.method public recordPlanSelection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "record ums planSelection plandId: %s, priceTier:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$RecordPlanSelection;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgent$RecordPlanSelection;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->launchWebTask(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "planId or priceTier is null - skip reporting"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public recordUmsImpression(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "record ums impression msgType: %s, impressionType:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$RecordUmsImpression;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgent$RecordUmsImpression;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->launchWebTask(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "msgName or impressionType is null - skip reporting"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public refreshProfileSwitchingStatus()V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/RestrictedProfilesReceiver;->isProfileSwitchingDisabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->isProfileSwitchingDisabled:Z

    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_service_useragent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Is profile switching disabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->isProfileSwitchingDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->isProfileSwitchingDisabled:Z

    goto :goto_0
.end method

.method public refreshUserMessage()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUser:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_service_useragent"

    const-string/jumbo v2, "UMA refreshing from server..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/service/user/UserAgent$4;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent$4;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/webclient/model/leafs/User;)V

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->launchWebTask(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public removeWebUserProfile(Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V
    .locals 2

    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "removeWebUserProfile"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$RemoveWebUserProfilesTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgent$RemoveWebUserProfilesTask;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->launchWebTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public selectProfile(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUserAgentStateManager:Lcom/netflix/mediaclient/service/user/UserAgentStateManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->selectNewProfile(Ljava/lang/String;)V

    return-void
.end method

.method public selectProfileResult(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents;->signalProfileSelectionResult(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public setCurrentAppLocale(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->userLocaleRepository:Lcom/netflix/mediaclient/service/user/UserLocaleRepository;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->userLocaleRepository:Lcom/netflix/mediaclient/service/user/UserLocaleRepository;

    new-instance v1, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->setApplicationLanguage(Lcom/netflix/mediaclient/util/l10n/UserLocale;)V

    :cond_0
    return-void
.end method

.method public setNonMemberPlayback(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mIsNonMemberPlayback:Z

    return-void
.end method

.method public shouldFetchAccountDataAsync()Z
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->isAccountDataAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lolomo/PrefetchLolomoABTestUtils;->isConfigRequestAsync(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public switchWebUserProfile(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "switchWebUserProfile"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->onProfileSwitch()V

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$SwitchWebUserProfilesTask;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent$SwitchWebUserProfilesTask;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->launchWebTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public tokenActivate(Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "loginUser tokenActivate"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p1, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->autoLoginSource:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->autologin:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUserAgentStateManager:Lcom/netflix/mediaclient/service/user/UserAgentStateManager;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v1, v0, v2, v5}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportSignInRequestSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->NRD_ERROR:Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v1, "UserAgent: activateAccByToken fails UserAgentStateManager is null"

    const/4 v2, 0x1

    sget-object v3, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->clientFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/StatusUtils;->createStatus(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;ZLcom/netflix/mediaclient/service/logging/client/model/RootCause;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->notifyLoginComplete(Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_1
    return-void

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->tokenActivate:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUserAgentStateManager:Lcom/netflix/mediaclient/service/user/UserAgentStateManager;

    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->activateAccByToken(Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NRD_REGISTRATION_EXISTS:Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v2, "UserAgent: activateAccByToken fails, NRD registration exist"

    const/4 v3, 0x0

    sget-object v4, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->clientFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-static {v1, v2, v3, v4}, Lcom/netflix/mediaclient/util/StatusUtils;->createStatus(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;ZLcom/netflix/mediaclient/service/logging/client/model/RootCause;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->notifyLoginComplete(Lcom/netflix/mediaclient/android/app/Status;)V

    new-instance v1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NRD_REGISTRATION_EXISTS:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->notifyLoginComplete(Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v1, v0, v2, v5}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportSignInRequestSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    goto :goto_1

    :cond_2
    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mLoginCallback:Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;

    goto :goto_1
.end method

.method public updateUserCredentials(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->isUserLoggedIn()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "nf_service_useragent"

    const-string/jumbo v3, "got cookies from dynecom"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mDynecomNetflixId:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mDynecomSecureNetflixId:Ljava/lang/String;

    const-string/jumbo v2, "nf_service_useragent"

    const-string/jumbo v3, "NetlixId: %s, secureNetflixId: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mDynecomNetflixId:Ljava/lang/String;

    aput-object v5, v4, v0

    iget-object v5, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mDynecomSecureNetflixId:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mUserAgentStateManager:Lcom/netflix/mediaclient/service/user/UserAgentStateManager;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->updateAccountTokens(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserAccount:Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    move v0, v1

    goto :goto_0
.end method

.method public userAccountActivated(Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;)V
    .locals 1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserAccount:Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents;->signalUserAccountActive(Landroid/content/Context;)V

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->refresh()V

    return-void
.end method

.method public userAccountDataResult(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->doLoginComplete()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->notifyLoginComplete(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public userAccountDeactivated()V
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents;->signalUserAccountDeactivated(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->clearAccountConfigData()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->doLogoutComplete()V

    return-void
.end method

.method public userAccountInactive()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent;->mCurrentUserAccount:Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    return-void
.end method

.method public verifyAge(Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyAgeTask;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyAgeTask;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->launchTask(Lcom/netflix/mediaclient/service/user/UserAgent$FetchTask;)V

    return-void
.end method

.method public verifyPin(Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyPinTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyPinTask;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->launchTask(Lcom/netflix/mediaclient/service/user/UserAgent$FetchTask;)V

    return-void
.end method
