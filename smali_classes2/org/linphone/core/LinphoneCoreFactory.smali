.class public abstract Lorg/linphone/core/LinphoneCoreFactory;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static factoryName:Ljava/lang/String; = "org.linphone.core.LinphoneCoreFactoryImpl"

.field static theLinphoneCoreFactory:Lorg/linphone/core/LinphoneCoreFactory;


# instance fields
.field protected fcontext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized instance()Lorg/linphone/core/LinphoneCoreFactory;
    .locals 4

    const-class v0, Lorg/linphone/core/LinphoneCoreFactory;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lorg/linphone/core/LinphoneCoreFactory;->theLinphoneCoreFactory:Lorg/linphone/core/LinphoneCoreFactory;

    if-nez v1, :cond_0

    .line 47
    sget-object v1, Lorg/linphone/core/LinphoneCoreFactory;->factoryName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/linphone/core/LinphoneCoreFactory;

    sput-object v1, Lorg/linphone/core/LinphoneCoreFactory;->theLinphoneCoreFactory:Lorg/linphone/core/LinphoneCoreFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 51
    :catch_0
    :try_start_1
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot instanciate factory ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/linphone/core/LinphoneCoreFactory;->factoryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 53
    :cond_0
    :goto_0
    sget-object v1, Lorg/linphone/core/LinphoneCoreFactory;->theLinphoneCoreFactory:Lorg/linphone/core/LinphoneCoreFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public static setFactoryClassName(Ljava/lang/String;)V
    .locals 0

    .line 40
    sput-object p0, Lorg/linphone/core/LinphoneCoreFactory;->factoryName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract createAccountCreator(Lorg/linphone/core/LinphoneCore;Ljava/lang/String;)Lorg/linphone/core/LinphoneAccountCreator;
.end method

.method public abstract createAuthInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/linphone/core/LinphoneAuthInfo;
.end method

.method public abstract createAuthInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/linphone/core/LinphoneAuthInfo;
.end method

.method public abstract createErrorInfo()Lorg/linphone/core/ErrorInfo;
.end method

.method public abstract createLinphoneAddress(Ljava/lang/String;)Lorg/linphone/core/LinphoneAddress;
.end method

.method public abstract createLinphoneAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/linphone/core/LinphoneAddress;
.end method

.method public abstract createLinphoneContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/linphone/core/LinphoneContent;
.end method

.method public abstract createLinphoneContent(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Lorg/linphone/core/LinphoneContent;
.end method

.method public abstract createLinphoneCore(Lorg/linphone/core/LinphoneCoreListener;Ljava/lang/Object;)Lorg/linphone/core/LinphoneCore;
.end method

.method public abstract createLinphoneCore(Lorg/linphone/core/LinphoneCoreListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/linphone/core/LinphoneCore;
.end method

.method public abstract createLinphoneFriend()Lorg/linphone/core/LinphoneFriend;
.end method

.method public abstract createLinphoneFriend(Ljava/lang/String;)Lorg/linphone/core/LinphoneFriend;
.end method

.method public abstract createLpConfig(Ljava/lang/String;)Lorg/linphone/core/LpConfig;
.end method

.method public abstract createLpConfigFromString(Ljava/lang/String;)Lorg/linphone/core/LpConfig;
.end method

.method public abstract createOpenH264DownloadHelper()Lorg/linphone/tools/OpenH264DownloadHelper;
.end method

.method public abstract createPresenceActivity(Lorg/linphone/core/PresenceActivityType;Ljava/lang/String;)Lorg/linphone/core/PresenceActivity;
.end method

.method public abstract createPresenceModel()Lorg/linphone/core/PresenceModel;
.end method

.method public abstract createPresenceModel(Lorg/linphone/core/PresenceActivityType;Ljava/lang/String;)Lorg/linphone/core/PresenceModel;
.end method

.method public abstract createPresenceModel(Lorg/linphone/core/PresenceActivityType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/linphone/core/PresenceModel;
.end method

.method public abstract createPresenceService(Ljava/lang/String;Lorg/linphone/core/PresenceBasicStatus;Ljava/lang/String;)Lorg/linphone/core/PresenceService;
.end method

.method public abstract createTunnelConfig()Lorg/linphone/core/TunnelConfig;
.end method

.method public abstract enableLogCollection(Z)V
.end method

.method public abstract getAllDialPlan()[Lorg/linphone/core/DialPlan;
.end method

.method public abstract setDebugMode(ZLjava/lang/String;)V
.end method

.method public abstract setLogCollectionPath(Ljava/lang/String;)V
.end method

.method public abstract setLogHandler(Lorg/linphone/core/LinphoneLogHandler;)V
.end method
