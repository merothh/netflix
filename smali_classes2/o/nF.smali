.class Lo/nF;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/nF$StateListAnimator;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Landroid/content/BroadcastReceiver;

.field private c:Z

.field private final d:Landroid/content/Context;

.field private final e:Lo/nF$StateListAnimator;

.field private final f:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/nF$StateListAnimator;Landroid/os/Looper;)V
    .locals 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lo/nF$5;

    invoke-direct {v0, p0}, Lo/nF$5;-><init>(Lo/nF;)V

    iput-object v0, p0, Lo/nF;->b:Landroid/content/BroadcastReceiver;

    .line 94
    new-instance v0, Lo/nF$4;

    invoke-direct {v0, p0}, Lo/nF$4;-><init>(Lo/nF;)V

    iput-object v0, p0, Lo/nF;->f:Landroid/content/BroadcastReceiver;

    .line 135
    iput-object p1, p0, Lo/nF;->d:Landroid/content/Context;

    .line 136
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lo/nF;->a:Landroid/os/Handler;

    .line 137
    iput-object p2, p0, Lo/nF;->e:Lo/nF$StateListAnimator;

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    .line 103
    invoke-static {p1}, Lo/adG;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lo/nF;->a:Landroid/os/Handler;

    new-instance v1, Lo/nF$1;

    invoke-direct {v1, p0, p1}, Lo/nF$1;-><init>(Lo/nF;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lo/nF;Landroid/content/Intent;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lo/nF;->a(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lo/nF;)Lo/nF$StateListAnimator;
    .locals 0

    .line 24
    iget-object p0, p0, Lo/nF;->e:Lo/nF$StateListAnimator;

    return-object p0
.end method

.method private c(Landroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-static {p1}, Lo/Ad;->a(Landroid/content/Intent;)Lo/Ad$TaskDescription;

    move-result-object p1

    .line 59
    iget-object v0, p1, Lo/Ad$TaskDescription;->b:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lo/Ad$TaskDescription;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Lo/nF;->a:Landroid/os/Handler;

    new-instance v1, Lo/nF$2;

    invoke-direct {v1, p0, p1}, Lo/nF$2;-><init>(Lo/nF;Lo/Ad$TaskDescription;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic c(Lo/nF;Landroid/content/Intent;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lo/nF;->c(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 155
    iget-boolean v0, p0, Lo/nF;->c:Z

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lo/nF;->d:Landroid/content/Context;

    iget-object v1, p0, Lo/nF;->b:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lo/adG;->e(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 157
    iget-object v0, p0, Lo/nF;->d:Landroid/content/Context;

    iget-object v1, p0, Lo/nF;->f:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lo/adG;->e(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    :cond_0
    const/4 v0, 0x0

    .line 160
    iput-boolean v0, p0, Lo/nF;->c:Z

    .line 161
    iget-object v0, p0, Lo/nF;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public e()V
    .locals 5

    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lo/nF;->c:Z

    .line 143
    iget-object v0, p0, Lo/nF;->d:Landroid/content/Context;

    iget-object v1, p0, Lo/nF;->b:Landroid/content/BroadcastReceiver;

    const-string v2, "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_STARTED"

    const-string v3, "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_ENDED"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.netflix.mediaclient.intent.category.PLAYER"

    invoke-static {v0, v1, v3, v2}, Lo/adG;->b(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 147
    iget-object v0, p0, Lo/nF;->d:Landroid/content/Context;

    iget-object v1, p0, Lo/nF;->f:Landroid/content/BroadcastReceiver;

    const-string v2, "com.netflix.mediaclient.intent.action.NOTIFY_USER_ACCOUNT_ACTIVE"

    const-string v3, "com.netflix.mediaclient.intent.action.NOTIFY_USER_ACCOUNT_DEACTIVE"

    const-string v4, "com.netflix.mediaclient.intent.action.ACCOUNT_DATA_FETCHED"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lo/adG;->b(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;[Ljava/lang/String;)Z

    return-void
.end method
