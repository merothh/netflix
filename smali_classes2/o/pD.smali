.class public Lo/pD;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field private a:Z

.field private final d:Landroid/content/Context;

.field private final e:Lo/pm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/pm;)V
    .locals 3

    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 25
    iput-object p1, p0, Lo/pD;->d:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lo/pD;->e:Lo/pm;

    :try_start_0
    const-string p2, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 29
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    .line 30
    invoke-static {p2}, Lo/adG;->a([Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p2

    .line 29
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p2, 0x1

    .line 31
    iput-boolean p2, p0, Lo/pD;->a:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "nf_playreport"

    const-string v2, "unable to register power status receiver"

    .line 34
    invoke-static {v1, p2, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 36
    :goto_0
    invoke-direct {p0, p1}, Lo/pD;->b(Landroid/content/Context;)V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 5

    .line 51
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 54
    :try_start_0
    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v3, "nf_playreport"

    const-string v4, "unable to check battery status"

    .line 57
    invoke-static {v3, p1, v4, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    const-string v0, "status"

    .line 65
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x2

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    .line 70
    iget-object p1, p0, Lo/pD;->e:Lo/pm;

    invoke-virtual {p1, v2}, Lo/pm;->e(Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 40
    iget-boolean v0, p0, Lo/pD;->a:Z

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lo/pD;->d:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lo/pD;->b(Landroid/content/Context;)V

    return-void
.end method
