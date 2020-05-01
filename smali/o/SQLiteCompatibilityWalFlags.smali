.class public Lo/SQLiteCompatibilityWalFlags;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SQLiteCompatibilityWalFlags$Application;
    }
.end annotation


# static fields
.field private static c:Lo/SQLiteCompatibilityWalFlags;


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/SQLiteCompatibilityWalFlags$Application;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lo/SQLiteCompatibilityWalFlags$4;

    invoke-direct {v0, p0}, Lo/SQLiteCompatibilityWalFlags$4;-><init>(Lo/SQLiteCompatibilityWalFlags;)V

    iput-object v0, p0, Lo/SQLiteCompatibilityWalFlags;->a:Ljava/lang/Runnable;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/SQLiteCompatibilityWalFlags;->b:Ljava/util/Set;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo/SQLiteCompatibilityWalFlags;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic b(Lo/SQLiteCompatibilityWalFlags;)Ljava/util/Set;
    .locals 0

    .line 32
    iget-object p0, p0, Lo/SQLiteCompatibilityWalFlags;->b:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic b()V
    .locals 0

    .line 32
    invoke-static {}, Lo/SQLiteCompatibilityWalFlags;->e()V

    return-void
.end method

.method public static declared-synchronized c()Lo/SQLiteCompatibilityWalFlags;
    .locals 2

    const-class v0, Lo/SQLiteCompatibilityWalFlags;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Lo/SQLiteCompatibilityWalFlags;->c:Lo/SQLiteCompatibilityWalFlags;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lo/SQLiteCompatibilityWalFlags;

    invoke-direct {v1}, Lo/SQLiteCompatibilityWalFlags;-><init>()V

    sput-object v1, Lo/SQLiteCompatibilityWalFlags;->c:Lo/SQLiteCompatibilityWalFlags;

    .line 40
    :cond_0
    sget-object v1, Lo/SQLiteCompatibilityWalFlags;->c:Lo/SQLiteCompatibilityWalFlags;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static e()V
    .locals 2

    .line 100
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/StringParceledListSlice;->c(Z)V

    return-void
.end method


# virtual methods
.method public b(Lo/SQLiteCompatibilityWalFlags$Application;)V
    .locals 1

    .line 95
    invoke-static {}, Lo/SQLiteCompatibilityWalFlags;->e()V

    .line 96
    iget-object v0, p0, Lo/SQLiteCompatibilityWalFlags;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public e(Lo/SQLiteCompatibilityWalFlags$Application;)V
    .locals 1

    .line 78
    invoke-static {}, Lo/SQLiteCompatibilityWalFlags;->e()V

    .line 80
    iget-object v0, p0, Lo/SQLiteCompatibilityWalFlags;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 85
    :cond_0
    iget-object p1, p0, Lo/SQLiteCompatibilityWalFlags;->b:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 86
    iget-object p1, p0, Lo/SQLiteCompatibilityWalFlags;->d:Landroid/os/Handler;

    iget-object v0, p0, Lo/SQLiteCompatibilityWalFlags;->a:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
