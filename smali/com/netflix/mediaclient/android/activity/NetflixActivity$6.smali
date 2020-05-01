.class Lcom/netflix/mediaclient/android/activity/NetflixActivity$6;
.super Landroid/content/BroadcastReceiver;
.source "NetflixActivity.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .prologue
    .line 1724
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$6;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 1727
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$6;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1737
    :goto_0
    return-void

    .line 1731
    :cond_0
    if-eqz p2, :cond_1

    const-string/jumbo v0, "com.netflix.mediaclient.service.ACTION_CLOSE_MINI_PLAYER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1732
    :cond_1
    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "Invalid intent: "

    invoke-static {v0, v1, p2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 1736
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$6;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$1300(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto :goto_0
.end method
