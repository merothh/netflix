.class public Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;
.super Ljava/lang/Object;
.source "MediaDrmUtils.java"


# instance fields
.field private isL1:Z

.field private isL3:Z

.field private securityLevel:Ljava/lang/String;

.field private supported:Z

.field private systemId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->systemId:Ljava/lang/String;

    .line 444
    invoke-direct {p0}, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->init()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->supported:Z

    .line 445
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    invoke-static {}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "System capabilities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/util/MediaDrmUtils$1;)V
    .locals 0

    .prologue
    .line 435
    invoke-direct {p0}, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;)Z
    .locals 1

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->isL1:Z

    return v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;)Z
    .locals 1

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->isL3:Z

    return v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;)Z
    .locals 1

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->supported:Z

    return v0
.end method

.method private init()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 456
    invoke-static {}, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->isWidewineSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 494
    :goto_0
    return v0

    .line 462
    :cond_0
    :try_start_0
    new-instance v2, Landroid/media/MediaDrm;

    sget-object v3, Lcom/netflix/mediaclient/util/MediaDrmUtils;->WIDEVINE_SCHEME:Ljava/util/UUID;

    invoke-direct {v2, v3}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :try_start_1
    const-string/jumbo v3, "securityLevel"

    invoke-virtual {v2, v3}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->securityLevel:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 480
    :try_start_2
    const-string/jumbo v3, "systemId"

    invoke-virtual {v2, v3}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->systemId:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 489
    invoke-static {v2}, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->releaseMediaDrmSafely(Landroid/media/MediaDrm;)Z

    .line 491
    iget-object v2, p0, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->securityLevel:Ljava/lang/String;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->isWidevineSecurityLevelL1(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->isL1:Z

    .line 492
    iget-boolean v2, p0, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->isL1:Z

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->isL3:Z

    move v0, v1

    .line 494
    goto :goto_0

    .line 463
    :catch_0
    move-exception v1

    .line 464
    invoke-static {}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Failed to create MediaDrm with Widevine scheme"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 465
    invoke-static {v1}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 471
    :catch_1
    move-exception v1

    .line 472
    invoke-static {}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->access$500()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Failed to get property security level"

    invoke-static {v3, v4, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 473
    const-string/jumbo v3, "SECURITY_LEVEL_GET_FAILURE"

    iput-object v3, p0, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->systemId:Ljava/lang/String;

    .line 474
    invoke-static {v1}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/Throwable;)V

    .line 475
    invoke-static {v2}, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->releaseMediaDrmSafely(Landroid/media/MediaDrm;)Z

    goto :goto_0

    .line 481
    :catch_2
    move-exception v1

    .line 482
    invoke-static {}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->access$500()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Failed to get system ID from MediaDrm"

    invoke-static {v3, v4, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 483
    const-string/jumbo v3, "SYSTEMID_GET_FAILURE"

    iput-object v3, p0, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->systemId:Ljava/lang/String;

    .line 484
    invoke-static {v1}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/Throwable;)V

    .line 485
    invoke-static {v2}, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->releaseMediaDrmSafely(Landroid/media/MediaDrm;)Z

    goto :goto_0
.end method

.method private static isWidevineSecurityLevelL1(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 568
    const-string/jumbo v0, "L1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isWidewineSupported()Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 573
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 574
    sget-object v0, Lcom/netflix/mediaclient/util/MediaDrmUtils;->WIDEVINE_SCHEME:Ljava/util/UUID;

    invoke-static {v0}, Landroid/media/MediaDrm;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result v0

    .line 576
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static releaseMediaDrmSafely(Landroid/media/MediaDrm;)Z
    .locals 3

    .prologue
    .line 506
    if-eqz p0, :cond_0

    .line 507
    :try_start_0
    invoke-virtual {p0}, Landroid/media/MediaDrm;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 509
    :catch_0
    move-exception v0

    .line 510
    invoke-static {}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Failed to release MediaDrm"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 511
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/Throwable;)V

    .line 512
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getSecurityLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->securityLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public isL1()Z
    .locals 1

    .prologue
    .line 527
    iget-boolean v0, p0, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->isL1:Z

    return v0
.end method

.method public isL3()Z
    .locals 1

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->isL3:Z

    return v0
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 519
    iget-boolean v0, p0, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->supported:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Widevine{supported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->supported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isL1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->isL1:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isL3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->isL3:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", securityLevel=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->securityLevel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", systemId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/util/MediaDrmUtils$WidevineSupport;->systemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
