.class public final enum Lcom/netflix/mediaclient/service/user/SmartLockMonitor;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/user/SmartLockMonitor;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/netflix/mediaclient/service/user/SmartLockMonitor;

.field private static final synthetic c:[Lcom/netflix/mediaclient/service/user/SmartLockMonitor;


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Lcom/netflix/mediaclient/service/user/SmartLockMonitor;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/service/user/SmartLockMonitor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/user/SmartLockMonitor;->b:Lcom/netflix/mediaclient/service/user/SmartLockMonitor;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/netflix/mediaclient/service/user/SmartLockMonitor;

    .line 9
    sget-object v2, Lcom/netflix/mediaclient/service/user/SmartLockMonitor;->b:Lcom/netflix/mediaclient/service/user/SmartLockMonitor;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/service/user/SmartLockMonitor;->c:[Lcom/netflix/mediaclient/service/user/SmartLockMonitor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/SmartLockMonitor;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/SmartLockMonitor;->c()V

    return-void
.end method

.method private c()V
    .locals 4

    .line 19
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/SmartLockMonitor;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v1

    const-string v2, "preference_smart_lock_used_for_last_login"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/user/SmartLockMonitor;
    .locals 1

    .line 9
    const-class v0, Lcom/netflix/mediaclient/service/user/SmartLockMonitor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/user/SmartLockMonitor;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/user/SmartLockMonitor;
    .locals 1

    .line 9
    sget-object v0, Lcom/netflix/mediaclient/service/user/SmartLockMonitor;->c:[Lcom/netflix/mediaclient/service/user/SmartLockMonitor;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/user/SmartLockMonitor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/user/SmartLockMonitor;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Z)V
    .locals 2

    monitor-enter p0

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/SmartLockMonitor;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 28
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "preference_smart_lock_used_for_last_login"

    invoke-static {v0, v1, p1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()Z
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/SmartLockMonitor;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
