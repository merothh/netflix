.class public Lcom/netflix/mediaclient/net/NetflixCronetProvider;
.super Lorg/chromium/net/CronetProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/net/NetflixCronetProvider$PreferredCronetProvider;
    }
.end annotation


# static fields
.field private static a:Lorg/chromium/net/CronetProvider;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static d:Lcom/netflix/mediaclient/net/NetflixCronetProvider$PreferredCronetProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    sget-object v0, Lcom/netflix/mediaclient/net/NetflixCronetProvider$PreferredCronetProvider;->e:Lcom/netflix/mediaclient/net/NetflixCronetProvider$PreferredCronetProvider;

    sput-object v0, Lcom/netflix/mediaclient/net/NetflixCronetProvider;->d:Lcom/netflix/mediaclient/net/NetflixCronetProvider$PreferredCronetProvider;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lorg/chromium/net/CronetProvider;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/net/NetflixCronetProvider;->a(Landroid/content/Context;Z)Lorg/chromium/net/CronetProvider;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/net/CronetProvider;->getVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized a(Landroid/content/Context;Z)Lorg/chromium/net/CronetProvider;
    .locals 8

    const-class v0, Lcom/netflix/mediaclient/net/NetflixCronetProvider;

    monitor-enter v0

    .line 75
    :try_start_0
    sget-object v1, Lcom/netflix/mediaclient/net/NetflixCronetProvider;->a:Lorg/chromium/net/CronetProvider;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-nez v1, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/net/NetflixCronetProvider;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 76
    new-instance v1, Lcom/google/android/gms/net/PlayServicesCronetProvider;

    invoke-direct {v1, p0}, Lcom/google/android/gms/net/PlayServicesCronetProvider;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/netflix/mediaclient/net/NetflixCronetProvider;->a:Lorg/chromium/net/CronetProvider;

    const-string v1, "NetflixCronetProvider"

    const-string v5, "using Cronet implementation: %s %s"

    new-array v6, v4, [Ljava/lang/Object;

    .line 77
    sget-object v7, Lcom/netflix/mediaclient/net/NetflixCronetProvider;->a:Lorg/chromium/net/CronetProvider;

    invoke-virtual {v7}, Lorg/chromium/net/CronetProvider;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    sget-object v7, Lcom/netflix/mediaclient/net/NetflixCronetProvider;->a:Lorg/chromium/net/CronetProvider;

    invoke-virtual {v7}, Lorg/chromium/net/CronetProvider;->getVersion()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v1, v5, v6}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 79
    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/net/NetflixCronetProvider;->a:Lorg/chromium/net/CronetProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    if-eqz p1, :cond_3

    .line 81
    :cond_1
    :try_start_1
    new-instance p1, Lorg/chromium/net/impl/NativeCronetProvider;

    invoke-direct {p1, p0}, Lorg/chromium/net/impl/NativeCronetProvider;-><init>(Landroid/content/Context;)V

    sput-object p1, Lcom/netflix/mediaclient/net/NetflixCronetProvider;->a:Lorg/chromium/net/CronetProvider;

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cronet."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/chromium/net/impl/ImplVersion;->getCronetVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 85
    :catch_0
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/net/CronetProviderInstaller;->isInstalled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 86
    new-instance p1, Lcom/google/android/gms/net/PlayServicesCronetProvider;

    invoke-direct {p1, p0}, Lcom/google/android/gms/net/PlayServicesCronetProvider;-><init>(Landroid/content/Context;)V

    sput-object p1, Lcom/netflix/mediaclient/net/NetflixCronetProvider;->a:Lorg/chromium/net/CronetProvider;

    :cond_2
    :goto_0
    const-string p0, "NetflixCronetProvider"

    const-string p1, "using Cronet implementation: %s %s"

    new-array v1, v4, [Ljava/lang/Object;

    .line 89
    sget-object v4, Lcom/netflix/mediaclient/net/NetflixCronetProvider;->a:Lorg/chromium/net/CronetProvider;

    invoke-virtual {v4}, Lorg/chromium/net/CronetProvider;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    sget-object v3, Lcom/netflix/mediaclient/net/NetflixCronetProvider;->a:Lorg/chromium/net/CronetProvider;

    invoke-virtual {v3}, Lorg/chromium/net/CronetProvider;->getVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, p1, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 91
    :cond_3
    sget-object p0, Lcom/netflix/mediaclient/net/NetflixCronetProvider;->a:Lorg/chromium/net/CronetProvider;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Lcom/netflix/mediaclient/net/NetflixCronetProvider$PreferredCronetProvider;)V
    .locals 2

    const-class v0, Lcom/netflix/mediaclient/net/NetflixCronetProvider;

    monitor-enter v0

    .line 102
    :try_start_0
    sget-object v1, Lcom/netflix/mediaclient/net/NetflixCronetProvider;->d:Lcom/netflix/mediaclient/net/NetflixCronetProvider$PreferredCronetProvider;

    if-eq v1, p0, :cond_0

    .line 103
    sput-object p0, Lcom/netflix/mediaclient/net/NetflixCronetProvider;->d:Lcom/netflix/mediaclient/net/NetflixCronetProvider$PreferredCronetProvider;

    .line 104
    sget-object p0, Lcom/netflix/mediaclient/net/NetflixCronetProvider;->a:Lorg/chromium/net/CronetProvider;

    if-eqz p0, :cond_0

    const-string p0, "NetflixCronetProvider"

    const-string v1, "set preferred Cronet provider after Cronet was already initialized - will not affect existing connections"

    .line 105
    invoke-static {p0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 106
    sput-object p0, Lcom/netflix/mediaclient/net/NetflixCronetProvider;->a:Lorg/chromium/net/CronetProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static e()Z
    .locals 3

    .line 64
    sget-object v0, Lcom/netflix/mediaclient/net/NetflixCronetProvider;->d:Lcom/netflix/mediaclient/net/NetflixCronetProvider$PreferredCronetProvider;

    sget-object v1, Lcom/netflix/mediaclient/net/NetflixCronetProvider$PreferredCronetProvider;->c:Lcom/netflix/mediaclient/net/NetflixCronetProvider$PreferredCronetProvider;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 67
    :cond_0
    invoke-static {}, Lcom/google/android/gms/net/CronetProviderInstaller;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "NetflixCronetProvider"

    const-string v1, "attempted to use Play Services Cronet, but not installed"

    .line 68
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public createBuilder()Lorg/chromium/net/CronetEngine$Builder;
    .locals 4

    const/4 v0, 0x0

    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/net/NetflixCronetProvider;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/net/NetflixCronetProvider;->a(Landroid/content/Context;Z)Lorg/chromium/net/CronetProvider;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/net/CronetProvider;->createBuilder()Lorg/chromium/net/CronetEngine$Builder;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "NetflixCronetProvider"

    const-string v3, "unable to create Cronet Builder - falling back to default implementation"

    .line 39
    invoke-static {v2, v1, v3, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 40
    iget-object v0, p0, Lcom/netflix/mediaclient/net/NetflixCronetProvider;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/net/NetflixCronetProvider;->a(Landroid/content/Context;Z)Lorg/chromium/net/CronetProvider;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/net/CronetProvider;->createBuilder()Lorg/chromium/net/CronetEngine$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "NetflixCronetProvider"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "99.0.0.0"

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
