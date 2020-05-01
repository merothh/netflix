.class public final Lcom/crittercism/internal/as;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Lcom/crittercism/internal/at;

.field private f:Lcom/crittercism/internal/ax;

.field private g:Lcom/crittercism/internal/ap;

.field private h:Lcom/crittercism/internal/bb;

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/at;Lcom/crittercism/internal/ax;Lcom/crittercism/internal/ap;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/crittercism/internal/as;->a:I

    iput-boolean v0, p0, Lcom/crittercism/internal/as;->b:Z

    iput-boolean v0, p0, Lcom/crittercism/internal/as;->c:Z

    iput-boolean v0, p0, Lcom/crittercism/internal/as;->d:Z

    iput-boolean v0, p0, Lcom/crittercism/internal/as;->i:Z

    iput-object p1, p0, Lcom/crittercism/internal/as;->e:Lcom/crittercism/internal/at;

    iput-object p2, p0, Lcom/crittercism/internal/as;->f:Lcom/crittercism/internal/ax;

    iput-object p3, p0, Lcom/crittercism/internal/as;->g:Lcom/crittercism/internal/ap;

    invoke-virtual {p1}, Lcom/crittercism/internal/at;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/crittercism/internal/bb;

    invoke-direct {v1, v0, p2}, Lcom/crittercism/internal/bb;-><init>(Landroid/content/Context;Lcom/crittercism/internal/ax;)V

    iput-object v1, p0, Lcom/crittercism/internal/as;->h:Lcom/crittercism/internal/bb;

    return-void
.end method

.method public static a(Lcom/crittercism/internal/at;Lcom/crittercism/internal/as;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/at;->a:Landroid/app/Application;

    if-nez v0, :cond_0

    new-instance v0, Lcom/crittercism/internal/at$b;

    invoke-direct {v0}, Lcom/crittercism/internal/at$b;-><init>()V

    throw v0
    :try_end_0
    .catch Lcom/crittercism/internal/at$b; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Application context not provided. Automatic breadcrumbs and transaction foreground times will not be recorded."

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/crittercism/internal/at;->a:Landroid/app/Application;
    :try_end_1
    .catch Lcom/crittercism/internal/at$b; {:try_start_1 .. :try_end_1} :catch_0

    const-string/jumbo v1, "registering lifecycle callbacks"

    invoke-static {v1}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "API Level is less than 14. Automatic breadcrumbs are not supported."

    invoke-static {v0}, Lcom/crittercism/internal/dw;->c(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_1

    :try_start_0
    iget-boolean v0, p0, Lcom/crittercism/internal/as;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/crittercism/internal/as;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crittercism/internal/as;->i:Z

    const-string/jumbo v0, "about to send app load from onPause"

    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crittercism/internal/as;->g:Lcom/crittercism/internal/ap;

    invoke-virtual {v0}, Lcom/crittercism/internal/ap;->a()V

    :cond_0
    iget-boolean v0, p0, Lcom/crittercism/internal/as;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/crittercism/internal/as;->h:Lcom/crittercism/internal/bb;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/crittercism/internal/as;->c:Z
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 4

    if-eqz p1, :cond_2

    :try_start_0
    iget-boolean v0, p0, Lcom/crittercism/internal/as;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crittercism/internal/as;->i:Z

    const-string/jumbo v0, "about to send app load from onResume"

    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crittercism/internal/as;->g:Lcom/crittercism/internal/ap;

    invoke-virtual {v0}, Lcom/crittercism/internal/ap;->a()V

    :cond_0
    iget-boolean v0, p0, Lcom/crittercism/internal/as;->b:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "not a foreground. rotation event."

    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/crittercism/internal/as;->b:Z

    :cond_1
    :goto_0
    iget v0, p0, Lcom/crittercism/internal/as;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/crittercism/internal/as;->a:I

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/crittercism/internal/as;->h:Lcom/crittercism/internal/bb;

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crittercism/internal/as;->c:Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget v0, p0, Lcom/crittercism/internal/as;->a:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/crittercism/internal/as;->f:Lcom/crittercism/internal/ax;

    new-instance v1, Lcom/crittercism/internal/bj;

    sget-object v2, Lcom/crittercism/internal/bj$a;->a:Lcom/crittercism/internal/bj$a;

    invoke-direct {v1, v2}, Lcom/crittercism/internal/bj;-><init>(Lcom/crittercism/internal/bj$a;)V

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/ax;->a(Lcom/crittercism/internal/cg;)V

    invoke-static {}, Lcom/crittercism/internal/be;->g()V

    iget-boolean v0, p0, Lcom/crittercism/internal/as;->d:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crittercism/internal/as;->d:Z

    iget-object v0, p0, Lcom/crittercism/internal/as;->e:Lcom/crittercism/internal/at;

    invoke-virtual {v0}, Lcom/crittercism/internal/at;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/crittercism/internal/d;

    invoke-direct {v1, v0}, Lcom/crittercism/internal/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/crittercism/internal/d;->a()Lcom/crittercism/internal/b;

    move-result-object v0

    sget-object v1, Lcom/crittercism/internal/b;->c:Lcom/crittercism/internal/b;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/crittercism/internal/b;->d:Lcom/crittercism/internal/b;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/crittercism/internal/as;->f:Lcom/crittercism/internal/ax;

    new-instance v1, Lcom/crittercism/internal/cc;

    sget v2, Lcom/crittercism/internal/cc$a;->b:I

    invoke-direct {v1, v2}, Lcom/crittercism/internal/cc;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/ax;->a(Lcom/crittercism/internal/cg;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/crittercism/internal/as;->f:Lcom/crittercism/internal/ax;

    new-instance v1, Lcom/crittercism/internal/cc;

    sget v2, Lcom/crittercism/internal/cc$a;->a:I

    invoke-direct {v1, v2}, Lcom/crittercism/internal/cc;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/ax;->a(Lcom/crittercism/internal/cg;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/crittercism/internal/as;->f:Lcom/crittercism/internal/ax;

    new-instance v1, Lcom/crittercism/internal/bh;

    sget v2, Lcom/crittercism/internal/bh$a;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/crittercism/internal/bh;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/ax;->a(Lcom/crittercism/internal/cg;)V
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 4

    if-eqz p1, :cond_1

    :try_start_0
    iget-boolean v0, p0, Lcom/crittercism/internal/as;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/crittercism/internal/as;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crittercism/internal/as;->i:Z

    :cond_0
    iget v0, p0, Lcom/crittercism/internal/as;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/crittercism/internal/as;->a:I

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "not a background. rotation event."

    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crittercism/internal/as;->b:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/crittercism/internal/as;->a:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/crittercism/internal/as;->f:Lcom/crittercism/internal/ax;

    new-instance v1, Lcom/crittercism/internal/bj;

    sget-object v2, Lcom/crittercism/internal/bj$a;->b:Lcom/crittercism/internal/bj$a;

    invoke-direct {v1, v2}, Lcom/crittercism/internal/bj;-><init>(Lcom/crittercism/internal/bj$a;)V

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/ax;->a(Lcom/crittercism/internal/cg;)V

    iget-object v0, p0, Lcom/crittercism/internal/as;->f:Lcom/crittercism/internal/ax;

    invoke-static {v0}, Lcom/crittercism/internal/be;->a(Lcom/crittercism/internal/ax;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/crittercism/internal/as;->f:Lcom/crittercism/internal/ax;

    new-instance v1, Lcom/crittercism/internal/bh;

    sget v2, Lcom/crittercism/internal/bh$a;->b:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/crittercism/internal/bh;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/ax;->a(Lcom/crittercism/internal/cg;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
