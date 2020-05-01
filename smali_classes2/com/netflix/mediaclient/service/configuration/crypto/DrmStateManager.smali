.class public Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;
.super Lo/JsPromptResult;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;,
        Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$StateListAnimator;
    }
.end annotation


# instance fields
.field private a:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;

.field private b:Ljava/lang/Runnable;

.field private c:Lo/Plugin;

.field private final d:Landroid/os/Handler;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/dc$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final h:Landroid/content/BroadcastReceiver;

.field private i:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Lo/JsPromptResult;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->e:Ljava/util/List;

    .line 39
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;->d:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->a:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->d:Landroid/os/Handler;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 199
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$5;-><init>(Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->h:Landroid/content/BroadcastReceiver;

    .line 55
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lo/CarrierIdentifier;->j()Lo/Plugin;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->c:Lo/Plugin;

    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->c:Lo/Plugin;

    invoke-interface {v0, p0}, Lo/Plugin;->b(Lo/JavascriptInterface;)Z

    .line 57
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->a()V

    .line 58
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->h()V

    return-void
.end method

.method static synthetic a(Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private a()V
    .locals 5

    .line 63
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nf_msl_DrmStateManager"

    const-string v1, "Do NOT release DRM resources when started in background"

    .line 64
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 68
    :cond_0
    invoke-static {}, Lo/fY;->l()I

    move-result v0

    .line 72
    new-instance v1, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$StateListAnimator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$StateListAnimator;-><init>(Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$5;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->b:Ljava/lang/Runnable;

    .line 73
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->b:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private b(Landroid/content/IntentFilter;[Ljava/lang/String;)V
    .locals 3

    .line 240
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 241
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static c()Z
    .locals 1

    .line 147
    invoke-static {}, Lo/fY;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-static {}, Lo/fY;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-static {}, Lo/dE;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic d(Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->i()V

    return-void
.end method

.method public static d()Z
    .locals 1

    .line 154
    invoke-static {}, Lo/fY;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-static {}, Lo/fY;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-static {}, Lo/dE;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic e(Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private g()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 91
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 93
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 4

    const-string v0, "nf_msl_DrmStateManager"

    const-string v1, "Register receiver"

    .line 220
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.netflix.mediaclient.intent.action.LOG_PAUSE_EVENTS_DELIVERY"

    const-string v3, "com.netflix.mediaclient.intent.action.LOG_RESUME_EVENTS_DELIVERY"

    .line 224
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 225
    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->b(Landroid/content/IntentFilter;[Ljava/lang/String;)V

    const-string v2, "com.netflix.mediaclient.intent.category.LOGGING"

    .line 227
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const/16 v2, 0x3e7

    .line 228
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 231
    :try_start_0
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Lo/IllegalMonitorStateException;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Failed to register "

    .line 234
    invoke-static {v0, v1, v3, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method private i()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->c:Lo/Plugin;

    invoke-interface {v0}, Lo/Plugin;->b()Z

    move-result v0

    const-string v1, "nf_msl_DrmStateManager"

    if-eqz v0, :cond_0

    const-string v0, "Application is in foreground, do NOT attempt DRM suspend!"

    .line 179
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->g()V

    return-void

    :cond_0
    const-string v0, "Application is in background, do DRM suspend!"

    .line 184
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static {}, Lo/dd;->c()Lo/dc;

    move-result-object v0

    invoke-interface {v0}, Lo/dc;->j()V

    return-void
.end method


# virtual methods
.method public a(Lo/Plugin;Landroid/content/Intent;)V
    .locals 0

    .line 100
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->d()Z

    move-result p1

    const-string p2, "nf_msl_DrmStateManager"

    if-nez p1, :cond_0

    const-string p1, "Do NOT release DRM resources on user interaction. No need for restore."

    .line 101
    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p1, "Application in foreground, cancel timer if exist. DRM suspend enabled."

    .line 105
    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->g()V

    .line 109
    invoke-static {}, Lo/dd;->c()Lo/dc;

    move-result-object p1

    invoke-interface {p1}, Lo/dc;->g()V

    return-void
.end method

.method public b()Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->a:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;

    return-object v0
.end method

.method public b(Lo/Plugin;)V
    .locals 5

    const-string p1, "nf_msl_DrmStateManager"

    const-string v0, "Application in background..."

    .line 115
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->d()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "nf_msl_DrmStateManager"

    const-string v0, "Do NOT release DRM resources on user interaction, no need to restore DRM resources."

    .line 118
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter p1

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->b:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 125
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$StateListAnimator;-><init>(Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$5;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->b:Ljava/lang/Runnable;

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "nf_msl_DrmStateManager"

    const-string v1, "Suspend timeout is already pending, this should NOT happen!"

    .line 129
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 134
    :goto_0
    invoke-static {}, Lo/fY;->j()I

    move-result v0

    .line 138
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->b:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->a:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;

    return-void
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/dc$TaskDescription;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->e:Ljava/util/List;

    return-object v0
.end method
