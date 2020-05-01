.class Lo/TC$8;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/TC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/TC;


# direct methods
.method constructor <init>(Lo/TC;)V
    .locals 0

    .line 2630
    iput-object p1, p0, Lo/TC$8;->a:Lo/TC;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 2633
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mPlayerSuspendIntentReceiver has"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PlayerFragment"

    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2634
    iget-object p1, p0, Lo/TC$8;->a:Lo/TC;

    iget-object p1, p1, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/TC$8;->a:Lo/TC;

    iget-object p1, p1, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->r()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/TX;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2635
    iget-object p1, p0, Lo/TC$8;->a:Lo/TC;

    invoke-virtual {p1}, Lo/TC;->v()V

    :cond_0
    return-void
.end method
