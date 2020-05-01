.class Lo/bM$4;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/bM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/bM;


# direct methods
.method constructor <init>(Lo/bM;)V
    .locals 0

    .line 1929
    iput-object p1, p0, Lo/bM$4;->a:Lo/bM;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "NetflixService"

    const-string p2, "mNetworkChangeReceiver onReceive"

    .line 1932
    invoke-static {p1, p2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    iget-object p1, p0, Lo/bM$4;->a:Lo/bM;

    invoke-static {p1}, Lo/bM;->x(Lo/bM;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lo/bM$4;->a:Lo/bM;

    invoke-static {p2}, Lo/bM;->w(Lo/bM;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1934
    iget-object p1, p0, Lo/bM$4;->a:Lo/bM;

    invoke-static {p1}, Lo/bM;->x(Lo/bM;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lo/bM$4;->a:Lo/bM;

    invoke-static {p2}, Lo/bM;->w(Lo/bM;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
