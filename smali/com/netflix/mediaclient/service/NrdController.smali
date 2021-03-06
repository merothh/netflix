.class public Lcom/netflix/mediaclient/service/NrdController;
.super Lcom/netflix/mediaclient/service/ServiceAgent;
.source "NrdController.java"


# static fields
.field private static final CA_FILENAME:Ljava/lang/String; = "ca.pem"

.field private static final TAG:Ljava/lang/String; = "nf_nrdcontroller"


# instance fields
.field private mNrdJsCmdReceiver:Lcom/netflix/mediaclient/service/NrdController$NrdJSCmdReceiver;

.field private nrd:Lcom/netflix/mediaclient/javabridge/NrdProxy;

.field private nrdp:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;-><init>()V

    new-instance v0, Lcom/netflix/mediaclient/service/NrdController$NrdBridge;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/NrdController$NrdBridge;-><init>(Lcom/netflix/mediaclient/service/NrdController;Lcom/netflix/mediaclient/service/NrdController$1;)V

    invoke-static {v0}, Lcom/netflix/mediaclient/javabridge/NrdProxyFactory;->createInstance(Lcom/netflix/mediaclient/javabridge/Bridge;)Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NrdController;->nrd:Lcom/netflix/mediaclient/javabridge/NrdProxy;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NrdController;->nrd:Lcom/netflix/mediaclient/javabridge/NrdProxy;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;-><init>(Lcom/netflix/mediaclient/javabridge/NrdProxy;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NrdController;->nrdp:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/NrdController;)Lcom/netflix/mediaclient/javabridge/ui/Nrdp;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController;->nrdp:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/NrdController;)Lcom/netflix/mediaclient/javabridge/NrdProxy;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController;->nrd:Lcom/netflix/mediaclient/javabridge/NrdProxy;

    return-object v0
.end method

.method private initializeNrdLib()V
    .locals 3

    const-string/jumbo v0, "nf_nrdcontroller"

    const-string/jumbo v1, "Initialize NRD bridge first"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController;->nrd:Lcom/netflix/mediaclient/javabridge/NrdProxy;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->init(Ljava/lang/String;)V

    const-string/jumbo v0, "nf_nrdcontroller"

    const-string/jumbo v1, "NRD bridge initialization done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "nf_nrdcontroller"

    const-string/jumbo v1, "Start listening for updates from NRDLIb"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController;->nrdp:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    const-string/jumbo v1, "init"

    new-instance v2, Lcom/netflix/mediaclient/service/NrdController$1;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/service/NrdController$1;-><init>(Lcom/netflix/mediaclient/service/NrdController;)V

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController;->nrd:Lcom/netflix/mediaclient/javabridge/NrdProxy;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->connect()V

    return-void
.end method

.method private loadNrdLib()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NrdController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "ca.pem"

    const-string/jumbo v3, "ca.pem"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/netflix/mediaclient/util/FileUtils;->copyFileFromAssetToFS(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    invoke-static {}, Lcom/netflix/mediaclient/repository/SecurityRepository;->isLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "nf_nrdcontroller"

    const-string/jumbo v2, "Native libraries failed to load. Probably not enough space left on device."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v1, "nf_nrdcontroller"

    const-string/jumbo v2, "Initializing NrdLib"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NrdController;->initializeNrdLib()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "nf_nrdcontroller"

    const-string/jumbo v3, "Failed to initiate NRDLib"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private postNrdInit()V
    .locals 3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NrdController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->getDeviceLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/NrdController;->setDeviceLocale(Ljava/util/Locale;)V

    const-string/jumbo v0, "nf_nrdcontroller"

    const-string/jumbo v1, "Sets IP address and interface"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController;->nrd:Lcom/netflix/mediaclient/javabridge/NrdProxy;

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/mdx/InterfaceChanged;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NrdController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/javabridge/invoke/mdx/InterfaceChanged;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    return-void
.end method

.method private setUIVersion()V
    .locals 0

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController;->mNrdJsCmdReceiver:Lcom/netflix/mediaclient/service/NrdController$NrdJSCmdReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NrdController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NrdController;->mNrdJsCmdReceiver:Lcom/netflix/mediaclient/service/NrdController$NrdJSCmdReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController;->nrd:Lcom/netflix/mediaclient/javabridge/NrdProxy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController;->nrd:Lcom/netflix/mediaclient/javabridge/NrdProxy;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->disconnect()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController;->nrd:Lcom/netflix/mediaclient/javabridge/NrdProxy;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->destroy()V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/NrdController;->nrd:Lcom/netflix/mediaclient/javabridge/NrdProxy;

    :cond_1
    iput-object v2, p0, Lcom/netflix/mediaclient/service/NrdController;->nrdp:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    invoke-super {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;->destroy()V

    return-void
.end method

.method protected doInit()V
    .locals 2

    const-string/jumbo v0, "nf_nrdcontroller"

    const-string/jumbo v1, "NrdController starting doInit"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NrdController;->loadNrdLib()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->NRD_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/NrdController;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method public getNrdp()Lcom/netflix/mediaclient/javabridge/ui/Nrdp;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController;->nrdp:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    return-object v0
.end method

.method public setActivationToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setDeviceLocale(Ljava/util/Locale;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->toUserLocale(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_nrdcontroller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sets device language to JNI to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NrdController;->nrd:Lcom/netflix/mediaclient/javabridge/NrdProxy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NrdController;->nrd:Lcom/netflix/mediaclient/javabridge/NrdProxy;

    new-instance v2, Lcom/netflix/mediaclient/javabridge/invoke/android/SetLanguage;

    invoke-direct {v2, v0}, Lcom/netflix/mediaclient/javabridge/invoke/android/SetLanguage;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    goto :goto_0
.end method

.method public setNetworkInterfaces()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController;->nrd:Lcom/netflix/mediaclient/javabridge/NrdProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController;->nrd:Lcom/netflix/mediaclient/javabridge/NrdProxy;

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/android/SetNetworkInterfaces;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NrdController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/javabridge/invoke/android/SetNetworkInterfaces;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    :cond_0
    return-void
.end method

.method public setPreferredLanguages([Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->joinArray([Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
