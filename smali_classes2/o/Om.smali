.class public abstract Lo/Om;
.super Ljava/lang/Object;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/app/Notification$Builder;ILjava/lang/Throwable;)V
    .locals 0

    .line 425
    invoke-static {p0, p1, p2, p3}, Lo/Om;->b(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/app/Notification$Builder;I)V

    return-void
.end method

.method private static synthetic a(Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/content/Context;Landroid/app/Notification$Builder;ILo/ErrorCodes;Ljava/lang/Throwable;)V
    .locals 2

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to download "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/Payload;->largeIcon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nf_push"

    invoke-static {v1, v0, p5}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    invoke-static {p1, p0, p2, p3, p4}, Lo/Om;->b(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/app/Notification$Builder;ILo/ErrorCodes;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Landroid/net/Uri;Lcom/netflix/mediaclient/service/pushnotification/Payload;Lcom/netflix/mediaclient/service/pushnotification/Payload$Action;I)Landroid/app/PendingIntent;
    .locals 3

    .line 143
    iget-object v0, p3, Lcom/netflix/mediaclient/service/pushnotification/Payload$Action;->key:Ljava/lang/String;

    .line 144
    iget-object p3, p3, Lcom/netflix/mediaclient/service/pushnotification/Payload$Action;->trackingInfo:Ljava/lang/String;

    .line 146
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x34000000

    .line 150
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 153
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "notificationAction"

    .line 154
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    :cond_0
    invoke-static {p3}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "notificationCTAActionTrackingInfo"

    .line 158
    invoke-virtual {v1, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string p1, "notificationId"

    .line 161
    invoke-virtual {v1, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    iget-object p1, p2, Lcom/netflix/mediaclient/service/pushnotification/Payload;->guid:Ljava/lang/String;

    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 164
    iget-object p1, p2, Lcom/netflix/mediaclient/service/pushnotification/Payload;->guid:Ljava/lang/String;

    const-string p3, "guid"

    invoke-virtual {v1, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    :cond_2
    iget-object p1, p2, Lcom/netflix/mediaclient/service/pushnotification/Payload;->messageGuid:Ljava/lang/String;

    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 168
    iget-object p1, p2, Lcom/netflix/mediaclient/service/pushnotification/Payload;->messageGuid:Ljava/lang/String;

    const-string p3, "messageGuid"

    invoke-virtual {v1, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    :cond_3
    iget-object p1, p2, Lcom/netflix/mediaclient/service/pushnotification/Payload;->originator:Ljava/lang/String;

    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 172
    iget-object p1, p2, Lcom/netflix/mediaclient/service/pushnotification/Payload;->originator:Ljava/lang/String;

    const-string p2, "originator"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    const/high16 p1, 0x8000000

    .line 175
    invoke-static {p0, p4, v1, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Landroid/app/Notification$Builder;Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;ILo/ErrorCodes;Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lo/Om;->c(Landroid/app/Notification$Builder;Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;ILo/ErrorCodes;Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Landroid/app/Notification;ILcom/netflix/mediaclient/service/pushnotification/Payload;)V
    .locals 3

    const-string v0, "notification"

    .line 240
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 243
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    .line 244
    new-instance v2, Lcom/netflix/cl/model/event/discrete/PushNotificationPresented;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationTrackingInfo;

    invoke-direct {v1, p3}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationTrackingInfo;-><init>(Lcom/netflix/mediaclient/service/pushnotification/Payload;)V

    invoke-direct {v2, v0, v1}, Lcom/netflix/cl/model/event/discrete/PushNotificationPresented;-><init>(Ljava/lang/Long;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 245
    sget-object p3, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p3, v2}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V

    const-string p3, "nf_push"

    if-eqz p0, :cond_0

    .line 250
    :try_start_0
    invoke-virtual {p0, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "Unexpected failure when trying to send notification"

    .line 254
    invoke-static {p3, p1, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "We are missing privilege?"

    .line 252
    invoke-static {p3, p1, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string p0, "Notification manager is not available!"

    .line 257
    invoke-static {p3, p0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/app/Notification$Builder;I)V
    .locals 1

    .line 441
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->bigViewText:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 442
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0, p2}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 443
    iget-object p2, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->bigViewText:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 445
    iget-object p2, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->bigViewSummary:Ljava/lang/String;

    invoke-static {p2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 446
    iget-object p2, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->bigViewSummary:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 448
    :cond_0
    iget-object p2, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->bigViewTitle:Ljava/lang/String;

    invoke-static {p2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 449
    iget-object p2, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->bigViewTitle:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 452
    :cond_1
    invoke-virtual {v0}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object p2

    goto :goto_0

    .line 454
    :cond_2
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    .line 456
    :goto_0
    invoke-static {p0, p2, p3, p1}, Lo/Om;->b(Landroid/content/Context;Landroid/app/Notification;ILcom/netflix/mediaclient/service/pushnotification/Payload;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/app/Notification$Builder;ILo/ErrorCodes;)V
    .locals 1

    .line 370
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->bigViewPicture:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    invoke-static {p0, p1, p2, p3, p4}, Lo/Om;->e(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/app/Notification$Builder;ILo/ErrorCodes;)V

    goto :goto_0

    .line 373
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lo/Om;->b(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/app/Notification$Builder;I)V

    :goto_0
    return-void
.end method

.method private static c(Landroid/content/Context;Landroid/net/Uri;Lcom/netflix/mediaclient/service/pushnotification/Payload;I)Landroid/app/PendingIntent;
    .locals 2

    .line 211
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/service/pushnotification/NotificationReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.netflix.mediaclient.intent.action.NOTIFICATION_BROWSER_REDIRECT"

    .line 212
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "target_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    iget-object p1, p2, Lcom/netflix/mediaclient/service/pushnotification/Payload;->guid:Ljava/lang/String;

    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 217
    iget-object p1, p2, Lcom/netflix/mediaclient/service/pushnotification/Payload;->guid:Ljava/lang/String;

    const-string v1, "guid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    :cond_0
    iget-object p1, p2, Lcom/netflix/mediaclient/service/pushnotification/Payload;->messageGuid:Ljava/lang/String;

    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 221
    iget-object p1, p2, Lcom/netflix/mediaclient/service/pushnotification/Payload;->messageGuid:Ljava/lang/String;

    const-string v1, "messageGuid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    :cond_1
    iget-object p1, p2, Lcom/netflix/mediaclient/service/pushnotification/Payload;->originator:Ljava/lang/String;

    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 225
    iget-object p1, p2, Lcom/netflix/mediaclient/service/pushnotification/Payload;->originator:Ljava/lang/String;

    const-string p2, "originator"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const/high16 p1, 0x10000000

    .line 228
    invoke-static {p0, p3, v0, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic c(Landroid/app/Notification$Builder;Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;ILo/ErrorCodes;Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V
    .locals 2

    .line 339
    invoke-static {}, Lo/adk;->c()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 340
    invoke-virtual {p5}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 341
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 343
    :cond_0
    invoke-virtual {p5}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 346
    :goto_0
    invoke-static {p1, p2, p0, p3, p4}, Lo/Om;->b(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/app/Notification$Builder;ILo/ErrorCodes;)V

    .line 347
    invoke-virtual {p5}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 348
    invoke-virtual {p5}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object p0

    invoke-virtual {p0}, Lo/CompatibilityInfo;->close()V

    :cond_1
    return-void
.end method

.method private static synthetic c(Landroid/app/Notification$Builder;Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/content/Context;ILcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V
    .locals 2

    .line 403
    new-instance v0, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v0, p0}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 405
    invoke-virtual {p4}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    const-string p0, "nf_push"

    const-string v1, "Big picture image is set"

    .line 406
    invoke-static {p0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object p0, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->bigViewSummary:Ljava/lang/String;

    invoke-static {p0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 409
    iget-object p0, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->bigViewSummary:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    .line 411
    :cond_0
    iget-object p0, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->bigViewTitle:Ljava/lang/String;

    invoke-static {p0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 412
    iget-object p0, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->bigViewTitle:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    .line 415
    :cond_1
    invoke-virtual {v0}, Landroid/app/Notification$BigPictureStyle;->build()Landroid/app/Notification;

    move-result-object p0

    .line 416
    invoke-static {p2, p0, p3, p1}, Lo/Om;->b(Landroid/content/Context;Landroid/app/Notification;ILcom/netflix/mediaclient/service/pushnotification/Payload;)V

    .line 418
    invoke-virtual {p4}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 419
    invoke-virtual {p4}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object p0

    invoke-virtual {p0}, Lo/CompatibilityInfo;->close()V

    :cond_2
    return-void
.end method

.method public static c(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v0, -0x1

    const-string v1, "notificationId"

    .line 464
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    const-string v0, "messageGuid"

    .line 469
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "notificationAction"

    .line 470
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 472
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 473
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lo/Om;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "notification"

    .line 476
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    if-eqz p0, :cond_2

    .line 478
    invoke-virtual {p0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_2
    const-string p0, "notificationCTAActionTrackingInfo"

    .line 482
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 483
    invoke-static {p0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 485
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->a(Ljava/lang/String;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p0

    goto :goto_0

    .line 487
    :cond_3
    invoke-static {p1}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->createInstance(Landroid/content/Intent;)Lcom/netflix/mediaclient/service/pushnotification/MessageData;

    move-result-object p0

    .line 488
    new-instance p1, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationTrackingInfo;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationTrackingInfo;-><init>(Lcom/netflix/mediaclient/service/pushnotification/MessageData;)V

    move-object p0, p1

    .line 491
    :goto_0
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v0, Lcom/netflix/cl/model/event/discrete/PushNotificationAcknowledged;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/netflix/cl/model/event/discrete/PushNotificationAcknowledged;-><init>(Ljava/lang/Long;Lcom/netflix/cl/model/TrackingInfo;)V

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V

    :cond_4
    return-void
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 496
    new-instance v0, Lcom/netflix/cl/model/context/DeepLinkInput;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/cl/model/context/DeepLinkInput;-><init>(Ljava/lang/String;Ljava/lang/Float;)V

    .line 500
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p0, "CUSTOM"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto :goto_1

    :sswitch_1
    const-string p0, "THUMBS_DOWN"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_2
    const-string p0, "SHARE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_3
    const-string p0, "PLAY"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_4
    const-string p0, "MDP"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_5
    const-string p0, "THUMBS_UP"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_6
    const-string p0, "ADD2QUEUE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_7
    const-string p0, "DOWNLOAD"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_0

    .line 523
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "nf_push"

    aput-object v5, v3, v2

    aput-object p1, v3, v1

    const-string p1, "%s: Don\'t know how to handle command: %s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_0
    return-void

    .line 518
    :pswitch_1
    new-instance v4, Lcom/netflix/cl/model/event/session/command/SetThumbRatingCommand;

    invoke-direct {v4}, Lcom/netflix/cl/model/event/session/command/SetThumbRatingCommand;-><init>()V

    goto :goto_2

    .line 514
    :pswitch_2
    new-instance v4, Lcom/netflix/cl/model/event/session/command/ShareCommand;

    invoke-direct {v4}, Lcom/netflix/cl/model/event/session/command/ShareCommand;-><init>()V

    goto :goto_2

    .line 511
    :pswitch_3
    new-instance p0, Lcom/netflix/cl/model/event/session/command/PlayCommand;

    invoke-direct {p0, v4}, Lcom/netflix/cl/model/event/session/command/PlayCommand;-><init>(Ljava/lang/Long;)V

    move-object v4, p0

    goto :goto_2

    .line 508
    :pswitch_4
    new-instance v4, Lcom/netflix/cl/model/event/session/command/ViewDetailsCommand;

    invoke-direct {v4}, Lcom/netflix/cl/model/event/session/command/ViewDetailsCommand;-><init>()V

    goto :goto_2

    .line 505
    :pswitch_5
    new-instance v4, Lcom/netflix/cl/model/event/session/command/ResumeDownloadCommand;

    invoke-direct {v4}, Lcom/netflix/cl/model/event/session/command/ResumeDownloadCommand;-><init>()V

    goto :goto_2

    .line 502
    :pswitch_6
    new-instance v4, Lcom/netflix/cl/model/event/session/command/AddToPlaylistCommand;

    invoke-direct {v4}, Lcom/netflix/cl/model/event/session/command/AddToPlaylistCommand;-><init>()V

    .line 527
    :goto_2
    sget-object p0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p0, v0}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    move-result-wide p0

    .line 529
    invoke-static {v4}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 531
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/netflix/cl/Logger;->removeContext(Ljava/lang/Long;)Z

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7c3f4778 -> :sswitch_7
        -0x5bb8b840 -> :sswitch_6
        -0xa96e743 -> :sswitch_5
        0x12999 -> :sswitch_4
        0x258334 -> :sswitch_3
        0x4b357bf -> :sswitch_2
        0x3f7e2a44 -> :sswitch_1
        0x77297f71 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static d(Landroid/content/Context;Landroid/net/Uri;Lcom/netflix/mediaclient/service/pushnotification/Payload;I)Landroid/app/PendingIntent;
    .locals 3

    .line 179
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    .line 180
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p2, v2}, Lcom/netflix/mediaclient/service/pushnotification/Payload;->getVideoTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lo/adK;->e(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/pushnotification/Payload;->getVideoId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "playable_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 183
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 185
    iget-object p1, p2, Lcom/netflix/mediaclient/service/pushnotification/Payload;->guid:Ljava/lang/String;

    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 186
    iget-object p1, p2, Lcom/netflix/mediaclient/service/pushnotification/Payload;->guid:Ljava/lang/String;

    const-string v1, "guid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    :cond_0
    iget-object p1, p2, Lcom/netflix/mediaclient/service/pushnotification/Payload;->messageGuid:Ljava/lang/String;

    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 190
    iget-object p1, p2, Lcom/netflix/mediaclient/service/pushnotification/Payload;->messageGuid:Ljava/lang/String;

    const-string v1, "messageGuid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    :cond_1
    iget-object p1, p2, Lcom/netflix/mediaclient/service/pushnotification/Payload;->originator:Ljava/lang/String;

    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 194
    iget-object p1, p2, Lcom/netflix/mediaclient/service/pushnotification/Payload;->originator:Ljava/lang/String;

    const-string p2, "originator"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->pY:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x8000000

    .line 199
    invoke-static {p0, p3, p1, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static d(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;I)Landroid/app/PendingIntent;
    .locals 3

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/service/pushnotification/NotificationReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.netflix.mediaclient.intent.action.NOTIFICATION_CANCELED"

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    iget-object v1, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->guid:Ljava/lang/String;

    invoke-static {v1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    iget-object v1, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->guid:Ljava/lang/String;

    const-string v2, "guid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    :cond_0
    iget-object v1, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->messageGuid:Ljava/lang/String;

    invoke-static {v1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 131
    iget-object v1, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->messageGuid:Ljava/lang/String;

    const-string v2, "messageGuid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    :cond_1
    iget-object v1, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->originator:Ljava/lang/String;

    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    iget-object p1, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->originator:Ljava/lang/String;

    const-string v1, "originator"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const/high16 p1, 0x10000000

    .line 138
    invoke-static {p0, p2, v0, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/app/Notification$Builder;ILjava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lo/Om;->a(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/app/Notification$Builder;ILjava/lang/Throwable;)V

    return-void
.end method

.method static d(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;Lo/ErrorCodes;I)V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 277
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/pushnotification/Payload;->getWhen()J

    move-result-wide v0

    .line 282
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->M:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/netflix/mediaclient/service/pushnotification/Payload;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 283
    invoke-virtual {p1, v2}, Lcom/netflix/mediaclient/service/pushnotification/Payload;->getTicker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 285
    sget v4, Lcom/netflix/mediaclient/ui/R$Activity;->bq:I

    .line 287
    new-instance v11, Landroid/app/Notification$Builder;

    invoke-direct {v11, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 290
    invoke-static {v11, p0}, Lcom/netflix/mediaclient/util/NotificationUtils;->d(Landroid/app/Notification$Builder;Landroid/content/Context;)Landroid/app/Notification$Builder;

    .line 292
    invoke-static {p0, p1, p3}, Lo/Om;->e(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v11, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 293
    invoke-static {p0, p1, p3}, Lo/Om;->d(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v11, v5}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 295
    invoke-virtual {v11, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const/4 v3, 0x1

    .line 296
    invoke-virtual {v11, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 297
    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 298
    iget-object v2, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->text:Ljava/lang/String;

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 300
    invoke-virtual {v11, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 301
    invoke-virtual {v11, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 303
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->subtext:Ljava/lang/String;

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 305
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Application;->g:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 306
    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 308
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/pushnotification/Payload;->getActions()[Lcom/netflix/mediaclient/service/pushnotification/Payload$Action;

    move-result-object v0

    .line 309
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    if-nez v3, :cond_0

    goto :goto_1

    .line 314
    :cond_0
    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/pushnotification/Payload$Action;->getPayload()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 319
    :cond_1
    iget-object v5, v3, Lcom/netflix/mediaclient/service/pushnotification/Payload$Action;->key:Ljava/lang/String;

    const-string v6, "SHARE"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 320
    sget v5, Lcom/netflix/mediaclient/ui/R$Application;->am:I

    iget-object v3, v3, Lcom/netflix/mediaclient/service/pushnotification/Payload$Action;->text:Ljava/lang/String;

    invoke-static {p0, v4, p1, p3}, Lo/Om;->d(Landroid/content/Context;Landroid/net/Uri;Lcom/netflix/mediaclient/service/pushnotification/Payload;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v11, v5, v3, v4}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_1

    .line 323
    :cond_2
    sget v5, Lcom/netflix/mediaclient/ui/R$Application;->am:I

    iget-object v6, v3, Lcom/netflix/mediaclient/service/pushnotification/Payload$Action;->text:Ljava/lang/String;

    invoke-static {p0, v4, p1, v3, p3}, Lo/Om;->b(Landroid/content/Context;Landroid/net/Uri;Lcom/netflix/mediaclient/service/pushnotification/Payload;Lcom/netflix/mediaclient/service/pushnotification/Payload$Action;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v11, v5, v6, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 327
    :cond_3
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->largeIcon:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "nf_push"

    const-string v1, "Icon was not set"

    .line 328
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-static {p0, p1, v11, p3, p2}, Lo/Om;->b(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/app/Notification$Builder;ILo/ErrorCodes;)V

    return-void

    .line 333
    :cond_4
    invoke-static {}, Lcom/netflix/android/imageloader/api/GetImageRequest;->b()Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v0

    iget-object v1, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->largeIcon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/android/imageloader/api/GetImageRequest;->d()Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;

    move-result-object v0

    .line 335
    invoke-interface {p2, v0}, Lo/ErrorCodes;->e(Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lo/On;

    move-object v5, v1

    move-object v6, v11

    move-object v7, p0

    move-object v8, p1

    move v9, p3

    move-object v10, p2

    invoke-direct/range {v5 .. v10}, Lo/On;-><init>(Landroid/app/Notification$Builder;Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;ILo/ErrorCodes;)V

    new-instance v2, Lo/Oo;

    move-object v5, v2

    move-object v6, p1

    move-object v8, v11

    invoke-direct/range {v5 .. v10}, Lo/Oo;-><init>(Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/content/Context;Landroid/app/Notification$Builder;ILo/ErrorCodes;)V

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method static synthetic d(Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/content/Context;Landroid/app/Notification$Builder;ILo/ErrorCodes;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lo/Om;->a(Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/content/Context;Landroid/app/Notification$Builder;ILo/ErrorCodes;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static e(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;I)Landroid/app/PendingIntent;
    .locals 5

    .line 75
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/pushnotification/Payload;->getDefaultActionPayload()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "nf_push"

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 84
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "https"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "Target destination is web site https or http"

    .line 85
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {p0, v0, p1, p2}, Lo/Om;->c(Landroid/content/Context;Landroid/net/Uri;Lcom/netflix/mediaclient/service/pushnotification/Payload;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v2, "Target destination is our application"

    .line 90
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 95
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->defaultActionKey:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 96
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->defaultActionKey:Ljava/lang/String;

    const-string v2, "notificationAction"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    :cond_2
    invoke-static {v1}, Lcom/netflix/mediaclient/util/NotificationUtils;->d(Landroid/content/Intent;)V

    const/high16 v0, 0x34000000

    .line 102
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "notificationId"

    .line 104
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->guid:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 107
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->guid:Ljava/lang/String;

    const-string v2, "guid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    :cond_3
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->messageGuid:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 111
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->messageGuid:Ljava/lang/String;

    const-string v2, "messageGuid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    :cond_4
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->originator:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 115
    iget-object p1, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->originator:Ljava/lang/String;

    const-string v0, "originator"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    const/high16 p1, 0x8000000

    .line 118
    invoke-static {p0, p2, v1, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Landroid/app/Notification$Builder;Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/content/Context;ILcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lo/Om;->c(Landroid/app/Notification$Builder;Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/content/Context;ILcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V

    return-void
.end method

.method private static e(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/app/Notification$Builder;ILo/ErrorCodes;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 390
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->bigViewPicture:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p4, "nf_push"

    const-string v0, "Large picture view was not set"

    .line 391
    invoke-static {p4, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    .line 393
    invoke-static {p0, p2, p3, p1}, Lo/Om;->b(Landroid/content/Context;Landroid/app/Notification;ILcom/netflix/mediaclient/service/pushnotification/Payload;)V

    return-void

    .line 397
    :cond_0
    invoke-static {}, Lcom/netflix/android/imageloader/api/GetImageRequest;->b()Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v0

    iget-object v1, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->bigViewPicture:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/android/imageloader/api/GetImageRequest;->d()Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;

    move-result-object v0

    .line 399
    invoke-interface {p4, v0}, Lo/ErrorCodes;->e(Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;)Lio/reactivex/Single;

    move-result-object p4

    new-instance v0, Lo/Ol;

    invoke-direct {v0, p2, p1, p0, p3}, Lo/Ol;-><init>(Landroid/app/Notification$Builder;Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/content/Context;I)V

    new-instance v1, Lo/Ok;

    invoke-direct {v1, p0, p1, p2, p3}, Lo/Ok;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/app/Notification$Builder;I)V

    invoke-virtual {p4, v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
