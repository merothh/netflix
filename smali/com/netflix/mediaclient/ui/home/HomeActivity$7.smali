.class Lcom/netflix/mediaclient/ui/home/HomeActivity$7;
.super Landroid/content/BroadcastReceiver;
.source "HomeActivity.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V
    .locals 0

    .prologue
    .line 731
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$7;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 734
    if-nez p2, :cond_1

    .line 735
    const-string/jumbo v0, "HomeActivity"

    const-string/jumbo v1, "Received null intent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_0
    :goto_0
    return-void

    .line 739
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 740
    const-string/jumbo v1, "HomeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RefreshHomeReceiver invoked and received Intent with Action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.REFRESH_HOME_LOLOMO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$7;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$1600(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V

    goto :goto_0
.end method
