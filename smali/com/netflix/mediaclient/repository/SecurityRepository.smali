.class public final Lcom/netflix/mediaclient/repository/SecurityRepository;
.super Ljava/lang/Object;
.source "SecurityRepository.java"


# static fields
.field private static final BOOTLOADER_PARAMETER_CERTIFICATION_VERSION:Ljava/lang/String; = "certification_version"

.field private static final BOOTLOADER_PARAMETER_DEVICE_CATEGORY:Ljava/lang/String; = "device_cat"

.field private static final BOOTLOADER_PARAMETER_DEVICE_TYPE:Ljava/lang/String; = "device_type"

.field private static final BOOTLOADER_PARAMETER_FULL_ESN:Ljava/lang/String; = "e"

.field private static final BOOTLOADER_PARAMETER_OS:Ljava/lang/String; = "os"

.field private static final BOOTLOADER_PARAMETER_SDK_VERSION:Ljava/lang/String; = "sdk_version"

.field private static final BOOTLOADER_PARAMETER_SOFTWARE_VERSION:Ljava/lang/String; = "sw_version"

.field private static final BOOTLOADER_PARAMETER_WEB_API_VERSION:Ljava/lang/String; = "v"

.field private static final BOOTLOADER_URL:Ljava/lang/String; = "https://www.netflix.com"

.field private static final BOOTLOADER_WEB_API_VERSION:Ljava/lang/String; = "2.0"

.field private static final CONSTANT_CRITTERCISM_APP_ID:I = 0x2

.field private static final CONSTANT_DEVICE_ID_TOKEN:I = 0x1

.field public static final CUSTOMER_SUPPORT_FILE_NAME:Ljava/lang/String; = "cs.dat"

.field private static final ESN_DELIM:Ljava/lang/String; = "-"

.field private static final MDXJS_VERSION_VALUE:Ljava/lang/String; = "1.1.6-android"

.field private static final MDXLIB_VERSION_VALUE:Ljava/lang/String; = "2013.3"

.field private static final MODEL_DELIM:Ljava/lang/String; = "_"

.field public static final NCCP_VERSION:Ljava/lang/String; = "NCCP/2.15"

.field private static final NRDAPP_VERSION_VALUE:Ljava/lang/String; = "2013.2"

.field private static final NRDLIB_VERSION_VALUE:Ljava/lang/String; = "2013.2"

.field private static final NRD_SDK_VERSION_VALUE:Ljava/lang/String; = "4.0.4"

.field public static final SENDER_ID:Ljava/lang/String; = "484286080282"

.field private static final TAG:Ljava/lang/String; = "SEC"

.field private static crittercismAppId:Ljava/lang/String;

.field private static deviceIdToken:Ljava/lang/String;

.field private static esnPrefix:Ljava/lang/String;

.field private static sLoaded:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBootloaderParameterCertificationVersion()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "certification_version"

    return-object v0
.end method

.method public static getBootloaderParameterDeviceCategory()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "device_cat"

    return-object v0
.end method

.method public static getBootloaderParameterDeviceType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "device_type"

    return-object v0
.end method

.method public static getBootloaderParameterFullEsn()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "e"

    return-object v0
.end method

.method public static getBootloaderParameterOs()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "os"

    return-object v0
.end method

.method public static getBootloaderParameterSdkVersion()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "sdk_version"

    return-object v0
.end method

.method public static getBootloaderParameterSoftwareVersion()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "sw_version"

    return-object v0
.end method

.method public static getBootloaderParameterWebApiVersion()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "v"

    return-object v0
.end method

.method public static getBootloaderUrl()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "https://www.netflix.com"

    return-object v0
.end method

.method public static getBootloaderWebApiVersion()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "2.0"

    return-object v0
.end method

.method public static getCrittercismAppId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/repository/SecurityRepository;->crittercismAppId:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultTokens(Landroid/content/Context;)Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;
    .locals 10

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "cs.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SEC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Load customer support secure data from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v0}, Lcom/netflix/mediaclient/repository/SecurityRepository;->native_loadVoipTokens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "SEC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Received"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "userToken"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "encToken"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    const-string/jumbo v0, "SEC"

    const-string/jumbo v1, "Credentials are empty!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    :cond_3
    :goto_1
    return-object v0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/cs.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v8, 0x57b12c00

    add-long/2addr v4, v8

    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->CS_DEFAULT:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/IVoip$AuthorizationTokens;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;J)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "SEC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDefaultTokens: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SEC"

    const-string/jumbo v2, "Failed to load default tokens"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v6

    goto :goto_1
.end method

.method public static getDeviceIdToken()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/repository/SecurityRepository;->deviceIdToken:Ljava/lang/String;

    return-object v0
.end method

.method public static getEsnDelim()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "-"

    return-object v0
.end method

.method public static getEsnPrefix()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/repository/SecurityRepository;->esnPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public static final getLibraryVersion()I
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/repository/SecurityRepository;->native_getLibraryVersion()I

    move-result v0

    return v0
.end method

.method public static getMdxJsVersion()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "1.1.6-android"

    return-object v0
.end method

.method public static getMdxLibVersion()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "2013.3"

    return-object v0
.end method

.method public static getModelDelim()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "_"

    return-object v0
.end method

.method public static getNrdAppVersion()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "2013.2"

    return-object v0
.end method

.method public static getNrdLibVersion()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "2013.2"

    return-object v0
.end method

.method public static getNrdSdkVersion()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "4.0.4"

    return-object v0
.end method

.method public static getSystemPropety(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/netflix/mediaclient/repository/SecurityRepository;->native_getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isLoaded()Z
    .locals 1

    sget-boolean v0, Lcom/netflix/mediaclient/repository/SecurityRepository;->sLoaded:Z

    return v0
.end method

.method public static declared-synchronized loadLibraries(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const-class v1, Lcom/netflix/mediaclient/repository/SecurityRepository;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lcom/netflix/mediaclient/repository/SecurityRepository;->sLoaded:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SEC"

    const-string/jumbo v3, "We already loaded native libraries!"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    const-string/jumbo v0, "cs.dat"

    const-string/jumbo v2, "cs.dat"

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/netflix/mediaclient/util/FileUtils;->copyFileFromAssetToFS(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    const-string/jumbo v0, "SEC"

    const-string/jumbo v2, "We copied cs.dat"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "netflixmp_jni"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->loadNativeLibrary(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/netflix/mediaclient/repository/SecurityRepository;->sLoaded:Z

    sget-boolean v0, Lcom/netflix/mediaclient/repository/SecurityRepository;->sLoaded:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/netflix/mediaclient/repository/SecurityRepository;->native_init([B)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/netflix/mediaclient/repository/SecurityRepository;->native_getConstant(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/repository/SecurityRepository;->deviceIdToken:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/netflix/mediaclient/repository/SecurityRepository;->native_getConstant(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/repository/SecurityRepository;->crittercismAppId:Ljava/lang/String;

    :cond_1
    sget-boolean v0, Lcom/netflix/mediaclient/repository/SecurityRepository;->sLoaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static final native native_getConstant(I)Ljava/lang/String;
.end method

.method private static final native native_getLibraryVersion()I
.end method

.method private static native native_getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static final native native_init([B)V
.end method

.method private static native native_loadVoipTokens(Ljava/lang/String;)Ljava/lang/String;
.end method
