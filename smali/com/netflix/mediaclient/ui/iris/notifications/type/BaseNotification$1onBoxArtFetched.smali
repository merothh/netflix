.class Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification$1onBoxArtFetched;
.super Ljava/lang/Object;
.source "BaseNotification.java"

# interfaces
.implements Lcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;


# instance fields
.field private final mSocialProfile:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listSummary:Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;

.field final synthetic val$msg:Lcom/netflix/mediaclient/service/pushnotification/MessageData;

.field final synthetic val$notificationSummary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification;Landroid/graphics/Bitmap;Landroid/content/Context;Lcom/netflix/model/leafs/social/IrisNotificationSummary;Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;Lcom/netflix/mediaclient/service/pushnotification/MessageData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 233
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification$1onBoxArtFetched;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification$1onBoxArtFetched;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification$1onBoxArtFetched;->val$notificationSummary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    iput-object p5, p0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification$1onBoxArtFetched;->val$listSummary:Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;

    iput-object p6, p0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification$1onBoxArtFetched;->val$msg:Lcom/netflix/mediaclient/service/pushnotification/MessageData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification$1onBoxArtFetched;->mSocialProfile:Landroid/graphics/Bitmap;

    .line 235
    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 278
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    sget-object v0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to download: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_0
    return-void
.end method

.method public onResponse(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/16 v6, 0x3e8

    const/4 v4, 0x1

    .line 239
    if-eqz p1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification$1onBoxArtFetched;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 241
    new-instance v1, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;-><init>()V

    invoke-virtual {v1, p1}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-result-object v2

    .line 242
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification$1onBoxArtFetched;->val$context:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f020134

    .line 243
    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification$1onBoxArtFetched;->mSocialProfile:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification$1onBoxArtFetched;->val$notificationSummary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    .line 244
    invoke-virtual {v3}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getFriendProfile()Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 245
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 246
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 248
    const-string/jumbo v0, "iris_notifications"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 249
    invoke-virtual {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 250
    invoke-virtual {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 253
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification$1onBoxArtFetched;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification$1onBoxArtFetched;->val$notificationSummary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification$1onBoxArtFetched;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification;->addNotificationText(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationCompat$BigPictureStyle;Lcom/netflix/model/leafs/social/IrisNotificationSummary;Landroid/content/Context;)V

    .line 254
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification$1onBoxArtFetched;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification$1onBoxArtFetched;->val$notificationSummary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification$1onBoxArtFetched;->val$listSummary:Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification$1onBoxArtFetched;->val$msg:Lcom/netflix/mediaclient/service/pushnotification/MessageData;

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification$1onBoxArtFetched;->val$context:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification;->addNotificationActions(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/netflix/model/leafs/social/IrisNotificationSummary;Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;Lcom/netflix/mediaclient/service/pushnotification/MessageData;Landroid/content/Context;)V

    .line 257
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.NOTIFICATION_CANCELED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification$1onBoxArtFetched;->val$msg:Lcom/netflix/mediaclient/service/pushnotification/MessageData;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->addMessageDataToIntent(Landroid/content/Intent;Lcom/netflix/mediaclient/service/pushnotification/MessageData;)V

    .line 259
    const-string/jumbo v2, "swiped_notification_id"

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification$1onBoxArtFetched;->val$notificationSummary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    invoke-virtual {v3}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification$1onBoxArtFetched;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 261
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 264
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification$1onBoxArtFetched;->val$context:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 271
    invoke-virtual {v0, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 272
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 273
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification$1onBoxArtFetched;->val$notificationSummary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 275
    :cond_0
    return-void
.end method
