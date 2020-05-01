.class public Lo/adK;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static d:J


# direct methods
.method public static a(Landroid/content/Intent;Ljava/lang/String;)Lcom/netflix/mediaclient/service/falkor/NotificationsListStatus;
    .locals 2

    const-string v0, "Received social notifications list updated intent"

    .line 105
    invoke-static {p1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    const-string p0, "Received null intent"

    .line 108
    invoke-static {p1, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget-object p0, Lo/id;->c:Lcom/netflix/mediaclient/service/falkor/NotificationsListStatus;

    return-object p0

    .line 112
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.netflix.mediaclient.intent.action.BA_IRIS_NOTIFICATION_LIST_UPDATED"

    .line 117
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Updating menu icon"

    .line 118
    invoke-static {p1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "notifications_list_status"

    .line 119
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/falkor/NotificationsListStatus;

    return-object p0

    .line 124
    :cond_1
    sget-object p0, Lo/id;->c:Lcom/netflix/mediaclient/service/falkor/NotificationsListStatus;

    return-object p0
.end method

.method public static b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    const-string v0, "swiped_notification_id"

    .line 133
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "saving swiped out notification id to preferences"

    .line 135
    invoke-static {p2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "notification_id_deleted_from_statusbar"

    .line 136
    invoke-static {p0, p2, p1}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static b(Lo/Am;)V
    .locals 5

    if-eqz p0, :cond_0

    .line 88
    invoke-virtual {p0}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lo/adK;->d:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xdbba0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 92
    invoke-virtual {p0}, Lo/Am;->w()Lo/zG;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lo/zG;->d(Z)V

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lo/adK;->d:J

    :cond_0
    return-void
.end method

.method public static b([Landroid/os/Parcelable;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Landroid/os/Parcelable;",
            "Ljava/util/Set<",
            "TT;>;)V"
        }
    .end annotation

    .line 150
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 151
    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static e(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 156
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 157
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "SPY-9064, SPY-13429 - Video title was not ready - showing no title share msg."

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    .line 158
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->pV:I

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v2

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 160
    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->pT:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object p2, v3, v1

    invoke-virtual {p0, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
