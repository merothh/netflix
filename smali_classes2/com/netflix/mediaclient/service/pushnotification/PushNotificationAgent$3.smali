.class Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$3;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;)V
    .locals 0

    .line 598
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$3;->this$0:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 606
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.netflix.mediaclient.intent.action.PUSH_ONLOGIN"

    .line 607
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "nf_push"

    if-eqz v0, :cond_0

    const-string p1, "onLogin"

    .line 608
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$3;->this$0:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    invoke-static {p1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->access$100(Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;)V

    goto :goto_0

    :cond_0
    const-string v0, "com.netflix.mediaclient.intent.action.PUSH_ONLOGOUT"

    .line 610
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "onLogout"

    .line 612
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$3;->this$0:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->access$200(Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;Landroid/content/Intent;)Lo/jk;

    move-result-object p1

    .line 614
    iget-object p2, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$3;->this$0:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    invoke-static {p2, p1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->access$300(Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;Lo/jk;)V

    goto :goto_0

    :cond_1
    const-string p2, "com.netflix.mediaclient.intent.action.PUSH_NOTIFICATION_OPTIN"

    .line 616
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p1, "optIn"

    .line 617
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$3;->this$0:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->onNotificationOptIn(Z)V

    goto :goto_0

    :cond_2
    const-string p2, "com.netflix.mediaclient.intent.action.PUSH_NOTIFICATION_OPTOUT"

    .line 619
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "optOut"

    .line 620
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$3;->this$0:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->onNotificationOptIn(Z)V

    :cond_3
    :goto_0
    return-void
.end method
