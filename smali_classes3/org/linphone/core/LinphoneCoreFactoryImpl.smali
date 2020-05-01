.class public Lorg/linphone/core/LinphoneCoreFactoryImpl;
.super Lorg/linphone/core/LinphoneCoreFactory;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreFactory;-><init>()V

    return-void
.end method

.method private native _createTunnelConfig()Ljava/lang/Object;
.end method

.method private native _setLogHandler(Ljava/lang/Object;)V
.end method

.method private native createErrorInfoNative()J
.end method

.method private native getAllDialPlanNative()[Lorg/linphone/core/DialPlan;
.end method

.method public static isArmv7()Z
    .locals 2

    const-string v0, "os.arch"

    .line 174
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "armv7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static loadOptionalLibrary(Ljava/lang/String;)Z
    .locals 3

    .line 37
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load optional library "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LinphoneCoreFactoryImpl"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private loadingDownloadedOpenH264(Landroid/content/Context;)Z
    .locals 5

    .line 84
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/libmsopenh264.so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "LinphoneCoreFactoryImpl"

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    aput-object v1, p1, v4

    const-string v0, " libmsopenh264 not found, we disable the download of Openh264"

    aput-object v0, p1, v3

    .line 87
    invoke-static {p1}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    return v4

    .line 91
    :cond_0
    new-instance v0, Lorg/linphone/tools/OpenH264DownloadHelper;

    invoke-direct {v0, p1}, Lorg/linphone/tools/OpenH264DownloadHelper;-><init>(Landroid/content/Context;)V

    .line 92
    invoke-virtual {v0}, Lorg/linphone/tools/OpenH264DownloadHelper;->isCodecFound()Z

    move-result p1

    if-eqz p1, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    aput-object v1, p1, v4

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Loading OpenH264 downloaded plugin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/linphone/tools/OpenH264DownloadHelper;->getFullPathLib()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v3

    invoke-static {p1}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    .line 94
    invoke-virtual {v0}, Lorg/linphone/tools/OpenH264DownloadHelper;->getFullPathLib()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    aput-object v1, p1, v4

    const-string v0, " Cannot load OpenH264 downloaded plugin"

    aput-object v0, p1, v3

    .line 96
    invoke-static {p1}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    :goto_0
    return v3
.end method


# virtual methods
.method public createAccountCreator(Lorg/linphone/core/LinphoneCore;Ljava/lang/String;)Lorg/linphone/core/LinphoneAccountCreator;
    .locals 1

    .line 228
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreatorImpl;

    invoke-direct {v0, p1, p2}, Lorg/linphone/core/LinphoneAccountCreatorImpl;-><init>(Lorg/linphone/core/LinphoneCore;Ljava/lang/String;)V

    return-object v0
.end method

.method public createAuthInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/linphone/core/LinphoneAuthInfo;
    .locals 1

    .line 60
    new-instance v0, Lorg/linphone/core/LinphoneAuthInfoImpl;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/linphone/core/LinphoneAuthInfoImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createAuthInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/linphone/core/LinphoneAuthInfo;
    .locals 8

    .line 180
    new-instance v7, Lorg/linphone/core/LinphoneAuthInfoImpl;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/linphone/core/LinphoneAuthInfoImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method public createErrorInfo()Lorg/linphone/core/ErrorInfo;
    .locals 4

    .line 240
    new-instance v0, Lorg/linphone/core/ErrorInfoImpl;

    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreFactoryImpl;->createErrorInfoNative()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/linphone/core/ErrorInfoImpl;-><init>(JZ)V

    return-object v0
.end method

.method public createLinphoneAddress(Ljava/lang/String;)Lorg/linphone/core/LinphoneAddress;
    .locals 1

    .line 71
    new-instance v0, Lorg/linphone/core/LinphoneAddressImpl;

    invoke-direct {v0, p1}, Lorg/linphone/core/LinphoneAddressImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createLinphoneAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/linphone/core/LinphoneAddress;
    .locals 1

    .line 66
    new-instance v0, Lorg/linphone/core/LinphoneAddressImpl;

    invoke-direct {v0, p1, p2, p3}, Lorg/linphone/core/LinphoneAddressImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createLinphoneContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/linphone/core/LinphoneContent;
    .locals 2

    .line 192
    new-instance v0, Lorg/linphone/core/LinphoneContentImpl;

    const/4 v1, 0x0

    if-nez p3, :cond_0

    move-object p3, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    :goto_0
    invoke-direct {v0, p1, p2, p3, v1}, Lorg/linphone/core/LinphoneContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    return-object v0
.end method

.method public createLinphoneContent(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Lorg/linphone/core/LinphoneContent;
    .locals 1

    .line 186
    new-instance v0, Lorg/linphone/core/LinphoneContentImpl;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/linphone/core/LinphoneContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    return-object v0
.end method

.method public createLinphoneCore(Lorg/linphone/core/LinphoneCoreListener;Ljava/lang/Object;)Lorg/linphone/core/LinphoneCore;
    .locals 2

    .line 123
    :try_start_0
    move-object v0, p2

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lorg/linphone/core/LinphoneCoreFactoryImpl;->fcontext:Landroid/content/Context;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 125
    iget-object v0, p0, Lorg/linphone/core/LinphoneCoreFactoryImpl;->fcontext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lorg/linphone/core/LinphoneCoreFactoryImpl;->loadingDownloadedOpenH264(Landroid/content/Context;)Z

    move-result v0

    .line 126
    :cond_0
    invoke-static {p2}, Lorg/linphone/mediastream/MediastreamerAndroidContext;->setContext(Ljava/lang/Object;)V

    .line 127
    new-instance v1, Lorg/linphone/core/LinphoneCoreImpl;

    invoke-direct {v1, p1, p2}, Lorg/linphone/core/LinphoneCoreImpl;-><init>(Lorg/linphone/core/LinphoneCoreListener;Ljava/lang/Object;)V

    .line 128
    invoke-interface {v1, v0}, Lorg/linphone/core/LinphoneCore;->enableDownloadOpenH264(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 131
    new-instance p2, Lorg/linphone/core/LinphoneCoreException;

    const-string v0, "Cannot create LinphoneCore"

    invoke-direct {p2, v0, p1}, Lorg/linphone/core/LinphoneCoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public createLinphoneCore(Lorg/linphone/core/LinphoneCoreListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/linphone/core/LinphoneCore;
    .locals 9

    .line 106
    :try_start_0
    move-object v0, p5

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lorg/linphone/core/LinphoneCoreFactoryImpl;->fcontext:Landroid/content/Context;

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 108
    iget-object v0, p0, Lorg/linphone/core/LinphoneCoreFactoryImpl;->fcontext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lorg/linphone/core/LinphoneCoreFactoryImpl;->loadingDownloadedOpenH264(Landroid/content/Context;)Z

    move-result v0

    .line 109
    :cond_0
    invoke-static {p5}, Lorg/linphone/mediastream/MediastreamerAndroidContext;->setContext(Ljava/lang/Object;)V

    const/4 v1, 0x0

    if-nez p2, :cond_1

    move-object v5, v1

    goto :goto_0

    .line 110
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v2

    :goto_0
    if-nez p3, :cond_2

    :goto_1
    move-object v6, v1

    goto :goto_2

    .line 111
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 112
    :goto_2
    new-instance p2, Lorg/linphone/core/LinphoneCoreImpl;

    move-object v3, p2

    move-object v4, p1

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lorg/linphone/core/LinphoneCoreImpl;-><init>(Lorg/linphone/core/LinphoneCoreListener;Ljava/io/File;Ljava/io/File;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    invoke-interface {p2, v0}, Lorg/linphone/core/LinphoneCore;->enableDownloadOpenH264(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 116
    new-instance p2, Lorg/linphone/core/LinphoneCoreException;

    const-string p3, "Cannot create LinphoneCore"

    invoke-direct {p2, p3, p1}, Lorg/linphone/core/LinphoneCoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public createLinphoneFriend()Lorg/linphone/core/LinphoneFriend;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 163
    invoke-virtual {p0, v0}, Lorg/linphone/core/LinphoneCoreFactoryImpl;->createLinphoneFriend(Ljava/lang/String;)Lorg/linphone/core/LinphoneFriend;

    move-result-object v0

    return-object v0
.end method

.method public createLinphoneFriend(Ljava/lang/String;)Lorg/linphone/core/LinphoneFriend;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 157
    new-instance v0, Lorg/linphone/core/LinphoneFriendImpl;

    invoke-direct {v0, p1}, Lorg/linphone/core/LinphoneFriendImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createLpConfig(Ljava/lang/String;)Lorg/linphone/core/LpConfig;
    .locals 0

    .line 76
    invoke-static {p1}, Lorg/linphone/core/LpConfigImpl;->fromFile(Ljava/lang/String;)Lorg/linphone/core/LpConfigImpl;

    move-result-object p1

    return-object p1
.end method

.method public createLpConfigFromString(Ljava/lang/String;)Lorg/linphone/core/LpConfig;
    .locals 0

    .line 80
    invoke-static {p1}, Lorg/linphone/core/LpConfigImpl;->fromBuffer(Ljava/lang/String;)Lorg/linphone/core/LpConfigImpl;

    move-result-object p1

    return-object p1
.end method

.method public createOpenH264DownloadHelper()Lorg/linphone/tools/OpenH264DownloadHelper;
    .locals 2

    .line 147
    iget-object v0, p0, Lorg/linphone/core/LinphoneCoreFactoryImpl;->fcontext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lorg/linphone/core/LinphoneCoreException;

    const-string v1, "Cannot create OpenH264DownloadHelper"

    invoke-direct {v0, v1}, Lorg/linphone/core/LinphoneCoreException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 151
    :cond_0
    new-instance v0, Lorg/linphone/tools/OpenH264DownloadHelper;

    iget-object v1, p0, Lorg/linphone/core/LinphoneCoreFactoryImpl;->fcontext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/linphone/tools/OpenH264DownloadHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createPresenceActivity(Lorg/linphone/core/PresenceActivityType;Ljava/lang/String;)Lorg/linphone/core/PresenceActivity;
    .locals 1

    .line 197
    new-instance v0, Lorg/linphone/core/PresenceActivityImpl;

    invoke-direct {v0, p1, p2}, Lorg/linphone/core/PresenceActivityImpl;-><init>(Lorg/linphone/core/PresenceActivityType;Ljava/lang/String;)V

    return-object v0
.end method

.method public createPresenceModel()Lorg/linphone/core/PresenceModel;
    .locals 1

    .line 207
    new-instance v0, Lorg/linphone/core/PresenceModelImpl;

    invoke-direct {v0}, Lorg/linphone/core/PresenceModelImpl;-><init>()V

    return-object v0
.end method

.method public createPresenceModel(Lorg/linphone/core/PresenceActivityType;Ljava/lang/String;)Lorg/linphone/core/PresenceModel;
    .locals 1

    .line 212
    new-instance v0, Lorg/linphone/core/PresenceModelImpl;

    invoke-direct {v0, p1, p2}, Lorg/linphone/core/PresenceModelImpl;-><init>(Lorg/linphone/core/PresenceActivityType;Ljava/lang/String;)V

    return-object v0
.end method

.method public createPresenceModel(Lorg/linphone/core/PresenceActivityType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/linphone/core/PresenceModel;
    .locals 1

    .line 217
    new-instance v0, Lorg/linphone/core/PresenceModelImpl;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/linphone/core/PresenceModelImpl;-><init>(Lorg/linphone/core/PresenceActivityType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createPresenceService(Ljava/lang/String;Lorg/linphone/core/PresenceBasicStatus;Ljava/lang/String;)Lorg/linphone/core/PresenceService;
    .locals 1

    .line 202
    new-instance v0, Lorg/linphone/core/PresenceServiceImpl;

    invoke-direct {v0, p1, p2, p3}, Lorg/linphone/core/PresenceServiceImpl;-><init>(Ljava/lang/String;Lorg/linphone/core/PresenceBasicStatus;Ljava/lang/String;)V

    return-object v0
.end method

.method public createTunnelConfig()Lorg/linphone/core/TunnelConfig;
    .locals 1

    .line 223
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreFactoryImpl;->_createTunnelConfig()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/TunnelConfig;

    return-object v0
.end method

.method public native enableLogCollection(Z)V
.end method

.method public getAllDialPlan()[Lorg/linphone/core/DialPlan;
    .locals 1

    .line 234
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreFactoryImpl;->getAllDialPlanNative()[Lorg/linphone/core/DialPlan;

    move-result-object v0

    return-object v0
.end method

.method public native setDebugMode(ZLjava/lang/String;)V
.end method

.method public native setLogCollectionPath(Ljava/lang/String;)V
.end method

.method public setLogHandler(Lorg/linphone/core/LinphoneLogHandler;)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lorg/linphone/core/LinphoneCoreFactoryImpl;->_setLogHandler(Ljava/lang/Object;)V

    return-void
.end method
