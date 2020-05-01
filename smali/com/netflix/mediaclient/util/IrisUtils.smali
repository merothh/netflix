.class public Lcom/netflix/mediaclient/util/IrisUtils;
.super Ljava/lang/Object;
.source "IrisUtils.java"


# static fields
.field public static final NOTIFICATIONS_ID:I = 0x3e8

.field public static final PAGE_NOTIFICATIONS_SIZE:I

.field public static final SHARE_URL_SUFFIX:Ljava/lang/String; = "source=android"

.field public static final SWIPED_NOTIFICATION_ID:Ljava/lang/String; = "swiped_notification_id"

.field private static final TAG:Ljava/lang/String; = "SocialUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;->MAX_NUM_NOTIFICATIONS:I

    sput v0, Lcom/netflix/mediaclient/util/IrisUtils;->PAGE_NOTIFICATIONS_SIZE:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addShareIcon(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Landroid/view/Menu;Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 82
    const/4 v0, 0x1

    .line 84
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->isKidsProfile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    const-string/jumbo v0, "SocialUtils"

    const-string/jumbo v2, "We have a kids profile - hide share icon"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 90
    :cond_0
    instance-of v2, p2, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 91
    const-string/jumbo v0, "SocialUtils"

    const-string/jumbo v2, "Adding share icon"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const v0, 0x7f0f0018

    const v2, 0x7f0802b6

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 93
    const v1, 0x7f020101

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 95
    :cond_1
    return-void
.end method

.method public static castArrayToSet([Landroid/os/Parcelable;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Landroid/os/Parcelable;",
            "Ljava/util/Set",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 219
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p0, v0

    .line 220
    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    :cond_0
    return-void
.end method

.method private static getShareText(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 244
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 245
    const-string/jumbo v0, "SPY-9064 - Video title was not ready - showing no title share msg."

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    .line 246
    const v0, 0x7f0802b8

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 248
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0802b7

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getShareUrl(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 254
    const-string/jumbo v0, "%s/%s/%s?%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "www.netflix.com"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "title"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "source=android"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static handleNotificationsUpdateReceiver(Landroid/content/Intent;Ljava/lang/String;)Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;
    .locals 3

    .prologue
    .line 162
    const-string/jumbo v0, "Received social notifications list updated intent"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    if-nez p0, :cond_0

    .line 165
    const-string/jumbo v0, "Received null intent"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    sget-object v0, Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;->NO_MESSAGES:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    .line 183
    :goto_0
    return-object v0

    .line 169
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notificationsUpdateReciever invoked with Action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_1
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.BA_IRIS_NOTIFICATION_LIST_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 175
    const-string/jumbo v0, "Updating menu icon"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string/jumbo v0, "notifications_list_status"

    .line 177
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    goto :goto_0

    .line 179
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleNotificationsUpdateReceiver got strange action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;->NO_MESSAGES:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    goto :goto_0
.end method

.method public static ifNotificationWasCanceledUpdateItsStatus(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 192
    const-string/jumbo v0, "swiped_notification_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    const-string/jumbo v1, "saving swiped out notification id to preferences"

    invoke-static {p2, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string/jumbo v1, "notification_id_deleted_from_statusbar"

    invoke-static {p0, v1, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 197
    :cond_0
    return-void
.end method

.method public static notifyOthersOfUnreadNotifications(Landroid/content/Context;ZZ)V
    .locals 4

    .prologue
    .line 132
    if-eqz p1, :cond_2

    .line 133
    sget-object v0, Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;->HAS_UNREAD_MESSAGES:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    .line 141
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    const-string/jumbo v1, "SocialUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyOthersOfUnreadNotifications: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.BA_IRIS_NOTIFICATION_LIST_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    const-string/jumbo v2, "notifications_list_status"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 146
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 149
    sget-object v1, Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;->HAS_UNREAD_MESSAGES:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    if-eq v0, v1, :cond_1

    .line 150
    invoke-static {p0}, Lcom/netflix/mediaclient/util/IrisUtils;->removeNotificationsFromStatusBar(Landroid/content/Context;)V

    .line 152
    :cond_1
    return-void

    .line 134
    :cond_2
    if-eqz p2, :cond_3

    .line 135
    sget-object v0, Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;->READ_ONLY:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    goto :goto_0

    .line 137
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;->NO_MESSAGES:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    goto :goto_0
.end method

.method public static removeNotificationsFromStatusBar(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 205
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 206
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 207
    return-void
.end method

.method private static startShare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 225
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 226
    invoke-static {p1, p3}, Lcom/netflix/mediaclient/util/IrisUtils;->getShareUrl(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Ljava/lang/String;

    move-result-object v1

    .line 229
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->shareSheet:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->movieDetails:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-static {p0, v2, v3, v4, v4}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommandStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Ljava/lang/String;)V

    .line 230
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->movieDetails:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-static {v1, p0, v4, v2}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportShareSheetActionStarted(Ljava/lang/String;Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 231
    invoke-static {p0}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommandEnded(Landroid/content/Context;)V

    .line 233
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 235
    const-string/jumbo v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    invoke-static {v0, p2, v1}, Lcom/netflix/mediaclient/util/IrisUtils;->getShareText(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 237
    const-string/jumbo v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const v1, 0x7f0802b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 240
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p0, v0, v4}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportShareSheetActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 241
    return-void
.end method

.method public static tryHandleMenuItemClick(Landroid/view/MenuItem;Landroid/content/Context;)Z
    .locals 5

    .prologue
    .line 105
    instance-of v0, p1, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    if-eqz v0, :cond_1

    invoke-interface {p0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f0018

    if-ne v0, v1, :cond_1

    move-object v0, p1

    .line 107
    check-cast v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    .line 108
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getVideoId()Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v3

    .line 111
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    .line 112
    const/4 v1, 0x0

    .line 113
    instance-of v4, v0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;

    if-eqz v4, :cond_2

    .line 114
    check-cast v0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 116
    :goto_0
    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    invoke-static {p1, v2, v0, v3}, Lcom/netflix/mediaclient/util/IrisUtils;->startShare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    .line 117
    const/4 v0, 0x1

    .line 119
    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
