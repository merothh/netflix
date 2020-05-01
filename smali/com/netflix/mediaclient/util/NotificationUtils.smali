.class public final Lcom/netflix/mediaclient/util/NotificationUtils;
.super Ljava/lang/Object;
.source "NotificationUtils.java"


# static fields
.field protected static final PUSH_NOTIFACTION_SOURCE:Ljava/lang/String; = "nflx_from_push_notification"

.field protected static final PUSH_NOTIFACTION_VALUE:Ljava/lang/String; = "true"

.field private static final TAG:Ljava/lang/String; = "nf_notification"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addNotificationSourceToIntent(Landroid/content/Intent;)V
    .locals 2

    if-eqz p0, :cond_0

    const-string/jumbo v0, "nflx_from_push_notification"

    const-string/jumbo v1, "true"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public static isIntentFromPushNotification(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v1, "nflx_from_push_notification"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "nf_notification"

    const-string/jumbo v1, "From push notification, report."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "nf_notification"

    const-string/jumbo v2, "Not from push notification, do not report."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
