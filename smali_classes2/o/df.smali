.class public abstract Lo/df;
.super Lo/cY;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field protected static n:Ljava/lang/String; = "nf_msl_WidevineCryptoManager"

.field public static final o:Ljava/util/UUID;


# instance fields
.field private k:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    sget-object v0, Lo/adU;->b:Ljava/util/UUID;

    sput-object v0, Lo/df;->o:Ljava/util/UUID;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;Lo/cz;Lo/dc$StateListAnimator;Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;)V
    .locals 0

    .line 61
    invoke-direct/range {p0 .. p5}, Lo/cY;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;Lo/cz;Lo/dc$StateListAnimator;Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;)V

    .line 52
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lo/df;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic b(Lo/df;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lo/df;->c(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .line 208
    invoke-virtual {p0}, Lo/df;->x_()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->c:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v0, v1, :cond_0

    .line 210
    sget-object v0, Lo/df;->n:Ljava/lang/String;

    const-string v1, "MediaDrm failed for Widevine L1, fail back to Widevine L3"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WIDEVINE_FORCED_FALLBACK_TO_L3_15002. Provisioning failed with status code 400 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 212
    sget-object p1, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineL1ForcedFallbackReason;->c:Lcom/netflix/mediaclient/service/configuration/crypto/WidevineL1ForcedFallbackReason;

    invoke-static {p1}, Lo/adU;->d(Lcom/netflix/mediaclient/service/configuration/crypto/WidevineL1ForcedFallbackReason;)V

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {p0}, Lo/df;->x_()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->d:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v0, v1, :cond_1

    .line 216
    sget-object v0, Lo/df;->n:Ljava/lang/String;

    const-string v1, "MediaDrm failed for Widevine L3, should fail back to legacy crypto scheme if that was possible, but it is not."

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WIDEVINE_FALLBACK_TO_LEGACY: 15002. Provisioning failed with status code 400 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_1
    sget-object p1, Lo/df;->n:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Crypto provider was not supported for this error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/df;->x_()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private k()V
    .locals 4

    .line 140
    iget-object v0, p0, Lo/df;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 141
    :try_start_0
    iget-object v1, p0, Lo/df;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 142
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 147
    :try_start_1
    iget-object v0, p0, Lo/df;->c:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    invoke-interface {v0}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->getProvisionRequest()Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 150
    invoke-virtual {p0, v0}, Lo/df;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    iget-object v0, p0, Lo/df;->c:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    invoke-interface {v0}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->getProvisionRequest()Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;

    move-result-object v0

    .line 157
    :goto_0
    invoke-interface {v0}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v1

    .line 158
    new-instance v3, Lo/df$1;

    invoke-direct {v3, p0, v1}, Lo/df$1;-><init>(Lo/df;Ljava/lang/String;)V

    .line 199
    invoke-static {v0, v3}, Lo/dn;->d(Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;Lo/dl;)Lo/dh;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Void;

    .line 200
    invoke-virtual {v0, v1}, Lo/dh;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 153
    :cond_0
    throw v0

    :catchall_1
    move-exception v1

    .line 142
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private o()Z
    .locals 5

    const/4 v0, 0x0

    .line 99
    :try_start_0
    iget-object v1, p0, Lo/df;->c:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    sget-object v2, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;->OFFLINE:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->openSession(Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;)[B

    move-result-object v1

    .line 100
    iget-object v2, p0, Lo/df;->c:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    invoke-interface {v2, v1}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->closeSession([B)V
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 114
    invoke-virtual {p0, v1}, Lo/df;->a(Ljava/lang/Throwable;)Z

    move-result v2

    const-string v3, "Fatal error, can not recover!"

    if-eqz v2, :cond_0

    .line 117
    :try_start_1
    iget-object v2, p0, Lo/df;->c:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    sget-object v4, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;->OFFLINE:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;

    invoke-interface {v2, v4}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->openSession(Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;)[B

    move-result-object v2

    .line 118
    iget-object v4, p0, Lo/df;->c:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    invoke-interface {v4, v2}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->closeSession([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    :goto_0
    sget-object v0, Lo/df;->n:Ljava/lang/String;

    const-string v1, "Ready!"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lo/df;->a:Lo/dc$StateListAnimator;

    invoke-interface {v0}, Lo/dc$StateListAnimator;->c()V

    const/4 v0, 0x1

    return v0

    .line 120
    :catchall_1
    sget-object v2, Lo/df;->n:Ljava/lang/String;

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 121
    iget-object v1, p0, Lo/df;->a:Lo/dc$StateListAnimator;

    sget-object v2, Lo/LegacyErrorStrings;->y:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v1, v2}, Lo/dc$StateListAnimator;->e(Lcom/netflix/mediaclient/android/app/Status;)V

    return v0

    .line 125
    :cond_0
    sget-object v2, Lo/df;->n:Ljava/lang/String;

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 126
    iget-object v1, p0, Lo/df;->a:Lo/dc$StateListAnimator;

    sget-object v2, Lo/LegacyErrorStrings;->y:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v1, v2}, Lo/dc$StateListAnimator;->e(Lcom/netflix/mediaclient/android/app/Status;)V

    return v0

    :catch_0
    move-exception v1

    .line 102
    sget-object v2, Lo/df;->n:Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "Device is not provisioned, start provisioning workflow!"

    invoke-static {v2, v1, v4, v3}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 105
    :try_start_2
    invoke-direct {p0}, Lo/df;->k()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    .line 107
    sget-object v2, Lo/df;->n:Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "Fatal error, can not recover on start provisioningg!!"

    invoke-static {v2, v1, v4, v3}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 108
    iget-object v1, p0, Lo/df;->a:Lo/dc$StateListAnimator;

    sget-object v2, Lo/LegacyErrorStrings;->y:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v1, v2}, Lo/dc$StateListAnimator;->e(Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_1
    return v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .line 231
    sget-object v0, Lo/df;->n:Ljava/lang/String;

    return-object v0
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method protected d()Ljava/util/UUID;
    .locals 1

    .line 240
    sget-object v0, Lo/df;->o:Ljava/util/UUID;

    return-object v0
.end method

.method public x_()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
    .locals 1

    .line 81
    iget-object v0, p0, Lo/df;->f:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    return-object v0
.end method

.method public y_()V
    .locals 2

    .line 72
    sget-object v0, Lo/df;->n:Ljava/lang/String;

    const-string v1, "MSLWidevineCryptoManager::init:"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-direct {p0}, Lo/df;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lo/df;->n:Ljava/lang/String;

    const-string v1, "MSLWidevineCryptoManager::init: Widevine is provisioned"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
