.class public Lcom/netflix/mediaclient/service/NetflixPowerManager;
.super Ljava/lang/Object;
.source "NetflixPowerManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_power_manager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mPartialWakeLockReasonSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->mPartialWakeLockReasonSet:Ljava/util/Set;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public acquirePartialWakeLockFor(Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;)V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->mPartialWakeLockReasonSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->mPartialWakeLockReasonSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    const-string/jumbo v2, "nf_power_manager"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_power_manager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "acquirePartialWakeLockFor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_2
    return-void
.end method

.method public forceReleasePartialWakeLock()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->mPartialWakeLockReasonSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_power_manager"

    const-string/jumbo v1, "forceReleasePartialWakeLock"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public releasePartialWakeLockFor(Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;)V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->mPartialWakeLockReasonSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->mPartialWakeLockReasonSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_power_manager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releasePartialWakeLockFor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
