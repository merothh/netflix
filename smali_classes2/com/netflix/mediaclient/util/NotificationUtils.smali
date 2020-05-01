.class public final Lcom/netflix/mediaclient/util/NotificationUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;
    }
.end annotation


# static fields
.field private static d:Z


# direct methods
.method private static a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/app/Notification;
    .locals 3

    .line 257
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->bq:I

    .line 258
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$Application;->g:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 260
    new-instance v2, Lo/OnGenericMotionListener$Activity;

    invoke-direct {v2, p0, p2}, Lo/OnGenericMotionListener$Activity;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 262
    invoke-virtual {v2, v0}, Lo/OnGenericMotionListener$Activity;->c(I)Lo/OnGenericMotionListener$Activity;

    move-result-object p2

    const/4 v0, 0x0

    .line 263
    invoke-virtual {p2, v0}, Lo/OnGenericMotionListener$Activity;->c(Z)Lo/OnGenericMotionListener$Activity;

    move-result-object p2

    const/4 v0, 0x1

    .line 264
    invoke-virtual {p2, v0}, Lo/OnGenericMotionListener$Activity;->e(Z)Lo/OnGenericMotionListener$Activity;

    move-result-object p2

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->M:I

    .line 265
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lo/OnGenericMotionListener$Activity;->a(Ljava/lang/CharSequence;)Lo/OnGenericMotionListener$Activity;

    move-result-object p0

    .line 266
    invoke-virtual {p0, v1}, Lo/OnGenericMotionListener$Activity;->b(I)Lo/OnGenericMotionListener$Activity;

    move-result-object p0

    .line 267
    invoke-virtual {p0, p1}, Lo/OnGenericMotionListener$Activity;->e(Ljava/lang/CharSequence;)Lo/OnGenericMotionListener$Activity;

    move-result-object p0

    .line 269
    invoke-virtual {p0}, Lo/OnGenericMotionListener$Activity;->c()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 208
    invoke-static {}, Lo/adk;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-static {p0}, Lcom/netflix/mediaclient/util/NotificationUtils;->h(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "nflx_from_push_notification"

    .line 139
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "true"

    .line 140
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v1, "nf_notification"

    if-eqz p0, :cond_1

    const-string p0, "From push notification, report."

    .line 141
    invoke-static {v1, p0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string p0, "Not from push notification, do not report."

    .line 144
    invoke-static {v1, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static b(Landroid/app/NotificationManager;Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 322
    sget-object v0, Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;->e:Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;->b()Ljava/lang/String;

    move-result-object v0

    .line 323
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    if-nez v1, :cond_0

    .line 325
    new-instance v1, Landroid/app/NotificationChannel;

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->lj:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    invoke-direct {v1, v0, p1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 326
    invoke-virtual {p0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 332
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;->values()[Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 333
    invoke-virtual {v3}, Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 337
    :cond_1
    invoke-virtual {v3}, Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "notification"

    .line 185
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_1

    .line 188
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    const-string v1, "messages_notitication_channel"

    .line 189
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 192
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 198
    :cond_1
    invoke-static {p0}, Lcom/netflix/mediaclient/util/NotificationUtils;->e(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/Context;)Landroid/app/Notification;
    .locals 2

    .line 248
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->ig:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "appwidget_notification_channel"

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/NotificationUtils;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/app/Notification$Builder;Landroid/content/Context;)Landroid/app/Notification$Builder;
    .locals 2

    .line 274
    invoke-static {}, Lo/adk;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "notification"

    .line 275
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 277
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "Notification Utils.configureNotificationWithSound() - NotificationManager is null"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-object p0

    .line 281
    :cond_0
    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/NotificationUtils;->b(Landroid/app/NotificationManager;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 285
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 290
    :try_start_0
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x5

    .line 291
    invoke-virtual {p0, p1, v0}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 293
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "Notification Utils - Failed to add default device sound to the notification"

    invoke-interface {v0, v1, p1}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public static d(Landroid/content/Context;)Landroid/app/Notification;
    .locals 2

    .line 252
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->hU:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "autologin_notification_channel"

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/NotificationUtils;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Intent;)V
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "nflx_from_push_notification"

    const-string v1, "true"

    .line 156
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public static e(Landroid/app/NotificationManager;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 301
    invoke-static {}, Lo/adk;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 304
    :cond_0
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/NotificationUtils;->b(Landroid/app/NotificationManager;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 0

    .line 169
    invoke-static {p0}, Lo/OnKeyListener;->d(Landroid/content/Context;)Lo/OnKeyListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 171
    invoke-virtual {p0}, Lo/OnKeyListener;->a()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static declared-synchronized h(Landroid/content/Context;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    const-class v0, Lcom/netflix/mediaclient/util/NotificationUtils;

    monitor-enter v0

    .line 216
    :try_start_0
    sget-boolean v1, Lcom/netflix/mediaclient/util/NotificationUtils;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 217
    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    const-string v1, "notification"

    .line 220
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 221
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "playback_notification_channel"

    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->oR:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {v2, v3, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v3, 0x0

    .line 222
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 224
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 226
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "download_notification_channel"

    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->bZ:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 227
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 229
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "messages_notitication_channel"

    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->lj:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    invoke-direct {v2, v3, v4, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 230
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 232
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "help_notification_channel"

    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->dl:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 233
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 235
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "autologin_notification_channel"

    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->R:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 236
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 238
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "appwidget_notification_channel"

    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->oW:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 239
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 241
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "mdx_notification_channel"

    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->lf:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 242
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    const/4 p0, 0x1

    .line 244
    sput-boolean p0, Lcom/netflix/mediaclient/util/NotificationUtils;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
