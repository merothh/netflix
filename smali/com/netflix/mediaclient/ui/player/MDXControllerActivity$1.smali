.class Lcom/netflix/mediaclient/ui/player/MDXControllerActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MDXControllerActivity.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity$1;->this$0:Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.netflix.mediaclient.ui.player.MDXControllerActivity.ACTION_FINISH"

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity$1;->this$0:Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->setResult(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity$1;->this$0:Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->finish()V

    :cond_0
    return-void
.end method
