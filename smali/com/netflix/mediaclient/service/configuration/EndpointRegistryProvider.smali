.class public Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;
.super Ljava/lang/Object;
.source "EndpointRegistryProvider.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;


# static fields
.field private static final ANDROID_API_ENDPOINT_PATH:Ljava/lang/String; = "/android/4.12.2/api"

.field private static final ANDROID_CONFIG_ENDPOINT_FULL:Ljava/lang/String; = "/android/samurai/config"

.field private static final BROWSE_AUTO_REDIRECT_TRUE:Z = true

.field private static final BROWSE_RESP_AUTO_REDIRECT:Ljava/lang/String; = "&routing=redirect"

.field private static final BROWSE_RESP_FORMAT:Ljava/lang/String; = "responseFormat=json&progressive=false"

.field private static final BROWSE_RESP_MANUAL_REDIRECT:Ljava/lang/String; = "&routing=reject"

.field private static final CLIENT_LOGGING_ENDPOINT:Ljava/lang/String; = "ichnaea.netflix.com"

.field private static final CLIENT_LOGGING_PATH:Ljava/lang/String; = "/log"

.field private static final ENDPOINT_REVISION_LATEST:Ljava/lang/String; = "&revision=latest"

.field private static final HTTP:Ljava/lang/String; = "http://"

.field private static final HTTPS:Ljava/lang/String; = "https://"

.field private static final IMG_PREFERENCE_JPG:Ljava/lang/String; = "jpg"

.field private static final IMG_PREFERENCE_WEBP:Ljava/lang/String; = "webp"

.field private static final PARAM_API_LEVEL:Ljava/lang/String; = "api"

.field private static final PARAM_APP_INSTALL_STORE:Ljava/lang/String; = "store"

.field private static final PARAM_APP_TYPE:Ljava/lang/String; = "appType"

.field private static final PARAM_APP_VERSION:Ljava/lang/String; = "appVersion"

.field private static final PARAM_APP_VERSION_CODE:Ljava/lang/String; = "appVer"

.field private static final PARAM_BUILD_BOARD:Ljava/lang/String; = "osBoard"

.field private static final PARAM_BUILD_DEVICE:Ljava/lang/String; = "osDevice"

.field private static final PARAM_BUILD_DISPLAY:Ljava/lang/String; = "osDisplay"

.field private static final PARAM_DEBUG_BUILD:Ljava/lang/String; = "dbg"

.field private static final PARAM_DEVICE_LOCALE:Ljava/lang/String; = "deviceLocale"

.field private static final PARAM_DEVICE_MEM_LEVEL:Ljava/lang/String; = "memLevel"

.field private static final PARAM_DOWNLOAD_ENABLED:Ljava/lang/String; = "dlEnabled"

.field private static final PARAM_ESN:Ljava/lang/String; = "esn"

.field private static final PARAM_FORM_FACTOR:Ljava/lang/String; = "ffbc"

.field private static final PARAM_IMG_TYPE_PREFERENCE:Ljava/lang/String; = "imgpref"

.field private static final PARAM_IS_DEVICE_LOCALE_IN_APP:Ljava/lang/String; = "lackLocale"

.field private static final PARAM_KUBRICK_KIDS_EXPERIENCE:Ljava/lang/String; = "kk"

.field private static final PARAM_LANGUAGES:Ljava/lang/String; = "languages"

.field private static final PARAM_LOLOMO_TEST_TYPE:Ljava/lang/String; = "ltType"

.field private static final PARAM_MANUFACTURER:Ljava/lang/String; = "mnf"

.field private static final PARAM_MODEL_ID:Ljava/lang/String; = "mId"

.field private static final PARAM_PATH_FORMAT:Ljava/lang/String; = "pathFormat"

.field private static final PARAM_PQL_PATH:Ljava/lang/String; = "path"

.field private static final PARAM_PROFILE_TYPE:Ljava/lang/String; = "prfType"

.field private static final PARAM_PROGRESSIVE:Ljava/lang/String; = "progressive"

.field private static final PARAM_RESOLUTION:Ljava/lang/String; = "res"

.field private static final PARAM_RESPONSE_FORMAT:Ljava/lang/String; = "responseFormat"

.field private static final PARAM_REVISION:Ljava/lang/String; = "revision"

.field private static final PARAM_ROUTING:Ljava/lang/String; = "routing"

.field private static final PARAM_VIDEO_CAPABILITY:Ljava/lang/String; = "qlty"

.field private static final PRESENTATION_TRACKING_ENDPOINT:Ljava/lang/String; = "presentationtracking.netflix.com"

.field private static final PRESENTATION_TRACKING_PATH:Ljava/lang/String; = "/users/presentationtracking"

.field private static final TAG:Ljava/lang/String; = "EndpointRegistryProvider"

.field private static final WEBCLIENT_ENDPOINT:Ljava/lang/String; = "api-global.netflix.com"


# instance fields
.field private mAppBootUrl:Ljava/lang/String;

.field private mCachedEndpointUrl:Ljava/lang/String;

.field private mClientLogEndpointUrl:Ljava/lang/String;

.field private mConfigEndpointUrl:Ljava/lang/String;

.field private mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

.field private final mContext:Landroid/content/Context;

.field private mEndpointHost:Ljava/lang/String;

.field private mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

.field private mPresentationTrackingUrl:Ljava/lang/String;

.field private mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    const-string/jumbo v0, "api-global.netflix.com"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mEndpointHost:Ljava/lang/String;

    return-void
.end method

.method private addDynamicParams(Ljava/lang/StringBuilder;Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getCurrentAppLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "languages"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getCurrentAppLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/UriUtil;->urlEncodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kids/KidsUtils;->isKidsProfile(Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "prfType"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileType()Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "kk"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->isOfflineFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "dlEnabled"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v0, p2, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;->urlParams:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildConfigUrl(Z)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "https://"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mEndpointHost:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "/android/samurai/config"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "responseFormat=json&progressive=false"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;->HIERARCHICAL:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;->urlParams:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    const-string/jumbo v0, "&routing=redirect"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "appType"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getDeviceModel()Lcom/netflix/mediaclient/service/configuration/DeviceModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->getAppType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "dbg"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getDeviceModel()Lcom/netflix/mediaclient/service/configuration/DeviceModel;

    move-result-object v2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isDeviceHd()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "hd"

    :goto_2
    const-string/jumbo v3, "qlty"

    invoke-direct {p0, v3, v0}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ffbc"

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->getFormFactor()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "osBoard"

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->getBuildPropBoard()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/util/UriUtil;->urlEncodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "osDevice"

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->getBuildPropDevice()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/util/UriUtil;->urlEncodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "osDisplay"

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->getBuildPropDisplay()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/util/UriUtil;->urlEncodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "appVer"

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->getAppVersionCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "appVersion"

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/util/UriUtil;->urlEncodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mId"

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->getEsnModelId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/util/UriUtil;->urlEncodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "api"

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->getApiLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mnf"

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/UriUtil;->urlEncodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "store"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/AppStoreHelper;->getInstallationSource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "memLevel"

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getMemLevel()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "lackLocale"

    invoke-static {}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->isApkMissingDeviceLocaleSupport()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "deviceLocale"

    invoke-static {}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->getDeviceLocale()Lcom/netflix/mediaclient/util/l10n/UserLocale;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "EndpointRegistryProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Config URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0

    :cond_1
    const-string/jumbo v0, "http://"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v0, "&routing=reject"

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v0, "sd"

    goto/16 :goto_2
.end method

.method private buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/util/UriUtil;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEndpointPath(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getApiEndpointRegistry()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;->GRAPH:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->getApiUrlFull(Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getImagePreference()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getImagePreference()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "webp"

    goto :goto_0
.end method

.method private getLoLoMoABTestPreference()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola2Utils;->isCoppolaDiscovery(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "c2"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getApiRequestParams(Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/util/MultiValuedHashMap;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/MultiValuedHashMap;-><init>()V

    const-string/jumbo v1, "responseFormat"

    const-string/jumbo v2, "json"

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "progressive"

    const-string/jumbo v2, "false"

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "routing"

    const-string/jumbo v2, "reject"

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ffbc"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getDeviceModel()Lcom/netflix/mediaclient/service/configuration/DeviceModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->getFormFactor()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getCurrentAppLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "languages"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getCurrentAppLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/kids/KidsUtils;->isKidsProfile(Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "prfType"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileType()Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "kk"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p1, :cond_3

    const-string/jumbo v1, "pathFormat"

    iget-object v2, p1, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;->value:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string/jumbo v1, "res"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getImageResolutionClass()Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    move-result-object v2

    iget-object v2, v2, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;->urlParamValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "imgpref"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getImagePreference()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "imgpref"

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->getImagePreference()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->isOfflineFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "dlEnabled"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v0

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "EndpointRegistryProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Response format is NOT known, go for GRAPH for request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string/jumbo v1, "pathFormat"

    sget-object v2, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;->GRAPH:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;->value:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/util/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getApiUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mEndpointHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string/jumbo v1, "/android/4.12.2/api"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApiUrlFull(Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mCachedEndpointUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mCachedEndpointUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->addDynamicParams(Ljava/lang/StringBuilder;Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mEndpointHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "/android/4.12.2/api"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "responseFormat=json&progressive=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "&routing=reject"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "res"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getImageResolutionClass()Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    move-result-object v2

    iget-object v2, v2, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;->urlParamValue:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "imgpref"

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->getImagePreference()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ffbc"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getDeviceModel()Lcom/netflix/mediaclient/service/configuration/DeviceModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->getFormFactor()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "appVersion"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getDeviceModel()Lcom/netflix/mediaclient/service/configuration/DeviceModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/UriUtil;->urlEncodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->getLoLoMoABTestPreference()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v2, "ltType"

    invoke-direct {p0, v2, v1}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mCachedEndpointUrl:Ljava/lang/String;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "EndpointRegistryProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Set mCachedEndpointUrl to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mCachedEndpointUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->addDynamicParams(Ljava/lang/StringBuilder;Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method public getAppStartConfigUrl()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildConfigUrl(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "path"

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataRequest;->nrmInfoPql:Ljava/lang/String;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/UriUtil;->urlEncodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "path"

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataRequest;->signInConfigPql:Ljava/lang/String;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/UriUtil;->urlEncodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "path"

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataRequest;->deviceConfigPql:Ljava/lang/String;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/UriUtil;->urlEncodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "path"

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataRequest;->streamingQoePqlDefault:Ljava/lang/String;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/UriUtil;->urlEncodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppbootUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mAppBootUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mAppBootUrl:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "appboot.netflix.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "/appboot/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mAppBootUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mAppBootUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public declared-synchronized getClientLoggingUrlFull()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mClientLogEndpointUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mClientLogEndpointUrl:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string/jumbo v1, "ichnaea.netflix.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "/log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mClientLogEndpointUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mClientLogEndpointUrl:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConfigUrlFull()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mConfigEndpointUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mConfigEndpointUrl:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildConfigUrl(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mConfigEndpointUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mConfigEndpointUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCustomerSupportAuthTokensUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildConfigUrl(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "path"

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataRequest;->customerSupportVoipPql:Ljava/lang/String;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/UriUtil;->urlEncodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "esn"

    invoke-static {p1}, Lcom/netflix/mediaclient/util/UriUtil;->urlEncodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNccpUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->getApiUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getPresentationTrackingUrlFull()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mPresentationTrackingUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mPresentationTrackingUrl:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string/jumbo v1, "presentationtracking.netflix.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "/users/presentationtracking"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mPresentationTrackingUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mPresentationTrackingUrl:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isSecure()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setUserAgentInterface(Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    return-void
.end method

.method public updateApiEndpointHost(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mEndpointHost:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mCachedEndpointUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mConfigEndpointUrl:Ljava/lang/String;

    return-void
.end method
