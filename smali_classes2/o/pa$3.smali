.class Lo/pa$3;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/pa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/pa;


# direct methods
.method constructor <init>(Lo/pa;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lo/pa$3;->b:Lo/pa;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-eqz p2, :cond_3

    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 80
    iget-object v0, p0, Lo/pa$3;->b:Lo/pa;

    invoke-static {v0}, Lo/pa;->a(Lo/pa;)Lo/aeq;

    move-result-object v0

    invoke-virtual {v0}, Lo/aeq;->c()Z

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 81
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    aput-object p2, v1, v2

    const-string p2, "offlineStorageMonitor"

    const-string v2, "mExtStorageMountReceiver tooFast=%b action=%s mData=%s"

    invoke-static {p2, v2, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz v0, :cond_0

    return-void

    .line 85
    :cond_0
    iget-object p2, p0, Lo/pa$3;->b:Lo/pa;

    invoke-static {p2}, Lo/pa;->e(Lo/pa;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lo/pa$3;->b:Lo/pa;

    invoke-static {v0}, Lo/pa;->c(Lo/pa;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string p2, "android.intent.action.MEDIA_EJECT"

    .line 86
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 89
    :cond_1
    iget-object p1, p0, Lo/pa$3;->b:Lo/pa;

    invoke-static {p1}, Lo/pa;->e(Lo/pa;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lo/pa$3;->b:Lo/pa;

    invoke-static {p2}, Lo/pa;->c(Lo/pa;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-static {}, Lo/pa;->f()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 87
    :cond_2
    :goto_0
    iget-object p1, p0, Lo/pa$3;->b:Lo/pa;

    invoke-static {p1}, Lo/pa;->e(Lo/pa;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lo/pa$3;->b:Lo/pa;

    invoke-static {p2}, Lo/pa;->c(Lo/pa;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-static {}, Lo/pa;->j()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    return-void
.end method
