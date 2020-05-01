.class public Lo/RecoverySystem;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/RecoverySystem$ActionBar;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/RecoverySystem$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Runnable;

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lo/RecoverySystem;->a:Z

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/RecoverySystem;->b:Ljava/util/Set;

    .line 25
    new-instance v0, Lo/RecoverySystem$2;

    invoke-direct {v0, p0}, Lo/RecoverySystem$2;-><init>(Lo/RecoverySystem;)V

    iput-object v0, p0, Lo/RecoverySystem;->c:Ljava/lang/Runnable;

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo/RecoverySystem;->e:Landroid/os/Handler;

    .line 34
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lo/RecoverySystem$5;

    invoke-direct {v1, p0, p1}, Lo/RecoverySystem$5;-><init>(Lo/RecoverySystem;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method static synthetic a(Lo/RecoverySystem;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lo/RecoverySystem;->a:Z

    return p0
.end method

.method static synthetic c(Lo/RecoverySystem;Z)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lo/RecoverySystem;->c(Z)V

    return-void
.end method

.method private c(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 53
    invoke-virtual {p0, p1}, Lo/RecoverySystem;->e(Z)V

    goto :goto_0

    .line 56
    :cond_0
    iget-object p1, p0, Lo/RecoverySystem;->e:Landroid/os/Handler;

    iget-object v0, p0, Lo/RecoverySystem;->c:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method static synthetic e(Lo/RecoverySystem;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lo/RecoverySystem;->a:Z

    return p1
.end method


# virtual methods
.method public declared-synchronized c(Lo/RecoverySystem$ActionBar;)V
    .locals 1

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lo/RecoverySystem;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Lo/RecoverySystem$ActionBar;)V
    .locals 1

    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lo/RecoverySystem;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public e(Z)V
    .locals 2

    .line 62
    monitor-enter p0

    .line 63
    :try_start_0
    iget-object v0, p0, Lo/RecoverySystem;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/RecoverySystem$ActionBar;

    .line 64
    invoke-interface {v1, p1}, Lo/RecoverySystem$ActionBar;->c(Z)V

    goto :goto_0

    .line 66
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lo/RecoverySystem;->a:Z

    return v0
.end method
