.class Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$3;
.super Landroid/content/BroadcastReceiver;
.source "PushNotificationAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;)V
    .locals 0

    .prologue
    .line 670
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$3;->this$0:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 674
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    const-string/jumbo v0, "nf_push"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 679
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PUSH_ONLOGIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 680
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "onLogin"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$3;->this$0:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->access$100(Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;)V

    .line 700
    :cond_1
    :goto_0
    return-void

    .line 682
    :cond_2
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PUSH_ONLOGOUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 684
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "onLogout"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$3;->this$0:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->access$200(Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;Landroid/content/Intent;)Lcom/netflix/mediaclient/service/logging/UserData;

    move-result-object v0

    .line 686
    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$3;->this$0:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->access$300(Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;Lcom/netflix/mediaclient/service/logging/UserData;)V

    goto :goto_0

    .line 688
    :cond_3
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PUSH_NOTIFICATION_OPTIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 689
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "optIn"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$3;->this$0:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->access$400(Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;Z)V

    goto :goto_0

    .line 691
    :cond_4
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PUSH_NOTIFICATION_OPTOUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 692
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "optOut"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$3;->this$0:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->access$400(Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;Z)V

    goto :goto_0

    .line 695
    :cond_5
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 696
    const-string/jumbo v1, "nf_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "We do not support action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
