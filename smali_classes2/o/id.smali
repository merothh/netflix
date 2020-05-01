.class public Lo/id;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static c:Lcom/netflix/mediaclient/service/falkor/NotificationsListStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/netflix/mediaclient/service/falkor/NotificationsListStatus;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/falkor/NotificationsListStatus;-><init>(I)V

    sput-object v0, Lo/id;->c:Lcom/netflix/mediaclient/service/falkor/NotificationsListStatus;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lcom/netflix/mediaclient/service/falkor/NotificationsListStatus;)V
    .locals 2

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.action.BA_IRIS_NOTIFICATION_LIST_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "notifications_list_status"

    .line 48
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 49
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v1

    invoke-static {v1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    .line 52
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/NotificationsListStatus;->c()Z

    move-result p0

    if-nez p0, :cond_0

    .line 53
    invoke-static {}, Lo/id;->e()V

    :cond_0
    return-void
.end method

.method public static e()V
    .locals 2

    .line 33
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lo/CarrierIdentifier;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x3e8

    .line 34
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method
