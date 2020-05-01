.class public final Lcom/netflix/mediaclient/service/pushnotification/NotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_push"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private createIntentForPushNotificationAgent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.PUSH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "swiped_notification_id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "swiped_notification_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-static {p2}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->createInstance(Landroid/content/Intent;)Lcom/netflix/mediaclient/service/pushnotification/MessageData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->addMessageDataToIntent(Landroid/content/Intent;Lcom/netflix/mediaclient/service/pushnotification/MessageData;)V

    return-object v0
.end method

.method private handleBrowserRedirectNotification(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "received notification browser redirect"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.NOTIFICATION_BROWSER_REDIRECT"

    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/mediaclient/service/pushnotification/NotificationReceiver;->createIntentForPushNotificationAgent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "target_url"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "target_url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    return-void
.end method

.method private handleCanceledNotification(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "received notification canceled"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.NOTIFICATION_CANCELED"

    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/mediaclient/service/pushnotification/NotificationReceiver;->createIntentForPushNotificationAgent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method private handleMdp(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "received show MDP from notificaton"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/service/pushnotification/NotificationReceiver;->markSocialNotificationAsRead(Landroid/content/Context;Landroid/content/Intent;)V

    const-class v0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v0, 0x34000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private handlePlay(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "received play from notification"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/service/pushnotification/NotificationReceiver;->markSocialNotificationAsRead(Landroid/content/Context;Landroid/content/Intent;)V

    const-class v0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v0, 0x34000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private handleSdp(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "received show SDP from notificaton"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/service/pushnotification/NotificationReceiver;->markSocialNotificationAsRead(Landroid/content/Context;Landroid/content/Intent;)V

    const-class v0, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v0, 0x34000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static markSocialNotificationAsRead(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "calling service to mark notification as read"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "g"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.NOTIFICATION_MARK_AS_READ"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "g"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class v0, Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.PUSH"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "Got empty notification ID inside markSocialNotificationAsRead()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_push"

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Landroid/content/Intent;)V

    const-string/jumbo v0, "nf_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Received an action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_0
    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "Not supported!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :sswitch_0
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.NOTIFICATION_CANCELED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.NOTIFICATION_BROWSER_REDIRECT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.NOTIFICATION_MOVIE_DETAILS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.NOTIFICATION_SHOW_DETAILS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.NOTIFICATION_PLAY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pushnotification/NotificationReceiver;->handleCanceledNotification(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pushnotification/NotificationReceiver;->handleBrowserRedirectNotification(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pushnotification/NotificationReceiver;->handleMdp(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pushnotification/NotificationReceiver;->handleSdp(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pushnotification/NotificationReceiver;->handlePlay(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x6b5c8f27 -> :sswitch_1
        -0x3de7ec7a -> :sswitch_3
        -0xef9dfc1 -> :sswitch_0
        0x2820f1da -> :sswitch_4
        0x6e46080d -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
