.class public Lcom/netflix/mediaclient/service/NetflixPowerManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;
    }
.end annotation


# instance fields
.field private a:Landroid/os/PowerManager$WakeLock;

.field private final c:Landroid/content/Context;

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->e:Ljava/util/Set;

    .line 29
    iput-object p1, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public b(Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object p1, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->c:Landroid/content/Context;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    if-eqz p1, :cond_1

    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->a:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "nf_power_manager"

    .line 47
    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->a:Landroid/os/PowerManager$WakeLock;

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-nez p1, :cond_1

    .line 54
    iget-object p1, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_1
    return-void
.end method

.method public d()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->a:Landroid/os/PowerManager$WakeLock;

    :cond_0
    return-void
.end method

.method public e(Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 69
    iget-object p1, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->e:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method
