.class Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->saveSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

.field final synthetic val$settings:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;Ljava/util/Map;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$1;->this$0:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$1;->val$settings:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$1;->this$0:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$1;->val$settings:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->saveSettings(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method
