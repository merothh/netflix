.class public Lo/pG;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/PrepareManager;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lo/H;

.field private final c:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

.field private d:Lo/rk;

.field private e:Lo/sz;

.field private final h:Landroid/content/BroadcastReceiver;

.field private i:Lo/ui;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/util/PriorityTaskManager;Lo/H;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Lo/pG$2;

    invoke-direct {v0, p0}, Lo/pG$2;-><init>(Lo/pG;)V

    iput-object v0, p0, Lo/pG;->h:Landroid/content/BroadcastReceiver;

    .line 44
    iput-object p1, p0, Lo/pG;->a:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lo/pG;->c:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    .line 46
    iput-object p3, p0, Lo/pG;->b:Lo/H;

    return-void
.end method

.method private b()V
    .locals 3

    .line 110
    iget-object v0, p0, Lo/pG;->a:Landroid/content/Context;

    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    iget-object v1, p0, Lo/pG;->h:Landroid/content/BroadcastReceiver;

    .line 111
    invoke-static {}, Lo/yn;->d()Landroid/content/IntentFilter;

    move-result-object v2

    .line 110
    invoke-virtual {v0, v1, v2}, Lo/IllegalMonitorStateException;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private c()V
    .locals 4

    .line 142
    :try_start_0
    iget-object v0, p0, Lo/pG;->a:Landroid/content/Context;

    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    iget-object v1, p0, Lo/pG;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lo/IllegalMonitorStateException;->c(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "PrepareManager"

    const-string v3, "unregisterUserAgentReceiver"

    .line 144
    invoke-static {v2, v0, v3, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 175
    iget-object v0, p0, Lo/pG;->e:Lo/sz;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Lo/sz;->e()V

    .line 178
    :cond_0
    iget-object v0, p0, Lo/pG;->d:Lo/rk;

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {v0}, Lo/rk;->e()V

    :cond_1
    return-void
.end method

.method a(Lo/tg;Lo/sz;Lo/rk;)V
    .locals 6

    .line 50
    iput-object p2, p0, Lo/pG;->e:Lo/sz;

    .line 51
    iput-object p3, p0, Lo/pG;->d:Lo/rk;

    .line 52
    new-instance p3, Lo/ui;

    iget-object v1, p0, Lo/pG;->a:Landroid/content/Context;

    iget-object v4, p0, Lo/pG;->c:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    iget-object v5, p0, Lo/pG;->b:Lo/H;

    move-object v0, p3

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lo/ui;-><init>(Landroid/content/Context;Lo/tg;Lo/sz;Lcom/google/android/exoplayer2/util/PriorityTaskManager;Lo/H;)V

    iput-object p3, p0, Lo/pG;->i:Lo/ui;

    .line 54
    invoke-direct {p0}, Lo/pG;->b()V

    return-void
.end method

.method d()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lo/pG;->c()V

    .line 59
    iget-object v0, p0, Lo/pG;->i:Lo/ui;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Lo/ui;->e()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lo/pG;->i:Lo/ui;

    :cond_0
    return-void
.end method

.method public d(Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lo/pG;->i:Lo/ui;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0, p1}, Lo/ui;->d(Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;)V

    :cond_0
    return-void
.end method

.method public e()Lo/rk;
    .locals 1

    .line 106
    iget-object v0, p0, Lo/pG;->d:Lo/rk;

    return-object v0
.end method

.method public e(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Ae;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, p1, v0}, Lo/pG;->e(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public e(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Ae;",
            ">;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/PrepareManager$Application;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 74
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "prepare requests and listener size must match!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/pG;->e:Lo/sz;

    if-eqz v0, :cond_2

    .line 78
    invoke-virtual {v0, p1}, Lo/sz;->c(Ljava/util/List;)V

    .line 80
    :cond_2
    iget-object v0, p0, Lo/pG;->d:Lo/rk;

    if-eqz v0, :cond_3

    .line 81
    invoke-virtual {v0, p1}, Lo/rk;->c(Ljava/util/List;)V

    .line 83
    :cond_3
    iget-object v0, p0, Lo/pG;->i:Lo/ui;

    if-eqz v0, :cond_4

    .line 84
    invoke-virtual {v0, p1, p2}, Lo/ui;->a(Ljava/util/List;Ljava/util/List;)V

    :cond_4
    return-void
.end method
