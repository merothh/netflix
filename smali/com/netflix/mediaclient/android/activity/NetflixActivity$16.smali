.class Lcom/netflix/mediaclient/android/activity/NetflixActivity$16;
.super Landroid/content/BroadcastReceiver;
.source "NetflixActivity.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .prologue
    .line 2730
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$16;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 2734
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2735
    if-nez v1, :cond_0

    .line 2751
    :goto_0
    return-void

    .line 2739
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2740
    const-string/jumbo v0, "NetflixActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2743
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2745
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$16;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$1900(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto :goto_0

    .line 2743
    :sswitch_0
    const-string/jumbo v2, "com.netflix.mediaclient.ui.error.ACTION_DISPLAY_ERROR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "com.netflix.mediaclient.ui.cs.ACTION_CALL_ENDED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    .line 2748
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$16;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$2000(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto :goto_0

    .line 2743
    nop

    :sswitch_data_0
    .sparse-switch
        0x4bdd92b6 -> :sswitch_1
        0x55c5a9fa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
