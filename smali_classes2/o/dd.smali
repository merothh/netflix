.class public final Lo/dd;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static c:Lo/dc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lo/dd;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;Lo/cz;Lo/dc$StateListAnimator;)V
    .locals 4

    const-class v0, Lo/dd;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, Lo/dd;->c:Lo/dc;

    if-eqz v1, :cond_0

    sget-object v1, Lo/dd;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "nf_msl"

    const-string p1, "CryptoManagerRegistry::createCryptoInstance: CryptoManager can not be instantiated more than once!"

    .line 74
    invoke-static {p0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit v0

    return-void

    .line 78
    :cond_0
    :try_start_1
    invoke-interface {p2}, Lo/cz;->e()Lo/ds;

    move-result-object v1

    invoke-interface {v1}, Lo/ds;->i()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v1

    .line 79
    sget-object v2, Lo/dd$2;->a:[I

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const-string p0, "nf_msl"

    .line 102
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not supported crypto: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget-object p0, Lo/LegacyErrorStrings;->ad:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p3, p0}, Lo/dc$StateListAnimator;->e(Lcom/netflix/mediaclient/android/app/Status;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    monitor-exit v0

    return-void

    :cond_1
    :try_start_2
    const-string v1, "nf_msl"

    const-string v2, "CryptoManagerRegistry::createCryptoInstance: create CryptoManager Widevine L3 starts..."

    .line 98
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v1, Lo/de;

    invoke-direct {v1, p0, p2, p3, p1}, Lo/de;-><init>(Landroid/content/Context;Lo/cz;Lo/dc$StateListAnimator;Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;)V

    sput-object v1, Lo/dd;->c:Lo/dc;

    goto :goto_0

    :cond_2
    const-string v1, "nf_msl"

    const-string v2, "CryptoManagerRegistry::createCryptoInstance: create CryptoManager Widevine L1 starts..."

    .line 94
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v1, Lo/di;

    invoke-direct {v1, p0, p2, p3, p1}, Lo/di;-><init>(Landroid/content/Context;Lo/cz;Lo/dc$StateListAnimator;Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;)V

    sput-object v1, Lo/dd;->c:Lo/dc;

    .line 106
    :goto_0
    sget-object p0, Lo/dd;->c:Lo/dc;

    invoke-interface {p0}, Lo/dc;->y_()V

    .line 107
    sget-object p0, Lo/dd;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p0, "nf_msl"

    const-string p1, "CryptoManagerRegistry::createCryptoInstance: create CryptoManager done."

    .line 108
    invoke-static {p0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    monitor-exit v0

    return-void

    .line 81
    :cond_3
    :try_start_3
    invoke-static {p0, p2}, Lo/adU;->d(Landroid/content/Context;Lo/cz;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "nf_msl"

    const-string p2, "Legacy crypto provider, unable to create Crypto, but Widevine was used before, we may be able to recover"

    .line 83
    invoke-static {p0, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object p0, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->e:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    sget-object p2, Lcom/netflix/mediaclient/StatusCode;->cx:Lcom/netflix/mediaclient/StatusCode;

    const/4 v1, 0x0

    invoke-interface {p1, p0, p2, v1}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;->d(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    .line 86
    sget-object p0, Lo/LegacyErrorStrings;->P:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p3, p0}, Lo/dc$StateListAnimator;->e(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_1

    :cond_4
    const-string p0, "nf_msl"

    const-string p1, "Legacy crypto provider, unable to create Crypto"

    .line 89
    invoke-static {p0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sget-object p0, Lo/LegacyErrorStrings;->O:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p3, p0}, Lo/dc$StateListAnimator;->e(Lcom/netflix/mediaclient/android/app/Status;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized b(Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;)V
    .locals 3

    const-class v0, Lo/dd;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lo/dd;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 57
    new-instance v1, Lo/cU;

    invoke-direct {v1, p0}, Lo/cU;-><init>(Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;)V

    sput-object v1, Lo/dd;->c:Lo/dc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized c()Lo/dc;
    .locals 2

    const-class v0, Lo/dd;

    monitor-enter v0

    .line 113
    :try_start_0
    sget-object v1, Lo/dd;->c:Lo/dc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized e()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
    .locals 3

    const-class v0, Lo/dd;

    monitor-enter v0

    .line 118
    :try_start_0
    sget-object v1, Lo/dd;->c:Lo/dc;

    if-nez v1, :cond_0

    .line 119
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    const-string v2, "CryptoManagerRegistry:: crypto manager is NULL!"

    invoke-interface {v1, v2}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 120
    monitor-exit v0

    return-object v1

    .line 122
    :cond_0
    :try_start_1
    sget-object v1, Lo/dd;->c:Lo/dc;

    invoke-interface {v1}, Lo/dc;->x_()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
