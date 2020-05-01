.class Lo/kA$3;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/kA;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/kA;


# direct methods
.method constructor <init>(Lo/kA;)V
    .locals 0

    .line 485
    iput-object p1, p0, Lo/kA$3;->c:Lo/kA;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "nf_media_session_controller"

    .line 488
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Landroid/content/Intent;)V

    const-string v0, "stringBlob"

    .line 489
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 490
    iget-object v0, p0, Lo/kA$3;->c:Lo/kA;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/kA;->d(Lo/kA;Z)Z

    .line 492
    :try_start_0
    new-instance v0, Lo/kC;

    invoke-direct {v0, p2}, Lo/kC;-><init>(Ljava/lang/String;)V

    .line 494
    iget-object p2, p0, Lo/kA$3;->c:Lo/kA;

    invoke-virtual {v0}, Lo/kC;->d()Z

    move-result v0

    invoke-static {p2, v0}, Lo/kA;->d(Lo/kA;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "Failed to extract capability data: "

    .line 497
    invoke-static {p1, v0, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
