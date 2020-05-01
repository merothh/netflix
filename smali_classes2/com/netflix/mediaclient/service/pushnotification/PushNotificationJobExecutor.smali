.class public Lcom/netflix/mediaclient/service/pushnotification/PushNotificationJobExecutor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/iB;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_push_job"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNetflixJobScheduler:Lo/iy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/iy;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationJobExecutor;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationJobExecutor;->mNetflixJobScheduler:Lo/iy;

    return-void
.end method

.method private handlePendingPushNotificationActions()Z
    .locals 8

    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationJobExecutor;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "notification_actions_to_log"

    invoke-static {v0, v2, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationJobExecutor;->mNetflixJobScheduler:Lo/iy;

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->g:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-interface {v0, v1, v4}, Lo/iy;->d(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Z)V

    return v4

    :cond_0
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v0, v5, v4

    const-string v6, "nf_push_job"

    const-string v7, "savedActions: %s"

    .line 57
    invoke-static {v6, v7, v5}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 58
    iget-object v5, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationJobExecutor;->mContext:Landroid/content/Context;

    invoke-static {v5, v2, v1}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 62
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v4, v0, :cond_1

    .line 63
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "action"

    .line 65
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-static {v0}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->createInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/pushnotification/MessageData;

    move-result-object v0

    .line 67
    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationJobExecutor;->handlePushNotificationAction(Ljava/lang/String;Lcom/netflix/mediaclient/service/pushnotification/MessageData;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "error retrieving saved Notification actions"

    .line 70
    invoke-static {v6, v1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v3
.end method

.method private handlePendingPushNotificationMessages()Z
    .locals 8

    const-string v0, "nf_push_job"

    const-string v1, "handlePendingMessages started"

    .line 91
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationJobExecutor;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "notification_messages_to_log"

    invoke-static {v1, v3, v2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-static {v1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationJobExecutor;->mNetflixJobScheduler:Lo/iy;

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->g:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-interface {v0, v1, v5}, Lo/iy;->d(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Z)V

    return v5

    :cond_0
    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v1, v6, v5

    const-string v7, "savedMessages: %s"

    .line 99
    invoke-static {v0, v7, v6}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 100
    iget-object v6, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationJobExecutor;->mContext:Landroid/content/Context;

    invoke-static {v6, v3, v2}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 104
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v5, v1, :cond_2

    .line 105
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 107
    iget-object v3, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationJobExecutor;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/netflix/mediaclient/service/pushnotification/PushJobServiceUtils;->Companion:Lcom/netflix/mediaclient/service/pushnotification/PushJobServiceUtils$Companion;

    iget-object v7, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationJobExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/netflix/mediaclient/service/pushnotification/PushJobServiceUtils$Companion;->getNetflixServiceIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v6

    new-instance v7, Lcom/netflix/mediaclient/service/pushnotification/PushJobServiceUtils$NetflixServiceConnection;

    .line 108
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/netflix/mediaclient/service/pushnotification/PushJobServiceUtils$NetflixServiceConnection;-><init>(Ljava/lang/Object;)V

    .line 107
    invoke-virtual {v3, v6, v7, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "handlePendingPushNotificationMessages could not bind to NetflixService!"

    .line 111
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "error parsing saved uri"

    .line 118
    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "error retrieving saved Notification message"

    .line 116
    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return v4
.end method

.method private handlePushNotificationAction(Ljava/lang/String;Lcom/netflix/mediaclient/service/pushnotification/MessageData;)V
    .locals 3

    .line 76
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "nf_push_job"

    const-string v2, "action: %s, msgData: %s"

    .line 79
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v0, "com.netflix.mediaclient.intent.action.NOTIFICATION_CANCELED"

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Handle notification canceled"

    .line 82
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationJobExecutor;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->reportNotificationCanceled(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/MessageData;)V

    goto :goto_0

    :cond_1
    const-string v0, "com.netflix.mediaclient.intent.action.NOTIFICATION_BROWSER_REDIRECT"

    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Handle notification browser redirect"

    .line 85
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationJobExecutor;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->reportBrowserRedirect(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/MessageData;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static schedulePushNotificationJob(Lo/iy;Lcom/netflix/mediaclient/service/job/NetflixJob;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 37
    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->g:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-interface {p0, v0}, Lo/iy;->c(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    invoke-interface {p0, p1}, Lo/iy;->b(Lcom/netflix/mediaclient/service/job/NetflixJob;)V

    :cond_0
    return-void
.end method

.method public static storeNotificationActionForLater(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "nf_push_job"

    const-string v1, "notification_actions_to_log"

    const/4 v2, 0x0

    .line 130
    invoke-static {p0, v1, v2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 132
    :try_start_0
    invoke-static {v3}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    goto :goto_0

    :cond_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "error retrieving saved Notification actions"

    .line 134
    invoke-static {v0, v4, v3}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-nez v2, :cond_1

    .line 138
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 141
    :cond_1
    invoke-static {p1}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->createInstance(Landroid/content/Intent;)Lcom/netflix/mediaclient/service/pushnotification/MessageData;

    move-result-object v3

    .line 142
    invoke-static {v3}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->getJsonObject(Lcom/netflix/mediaclient/service/pushnotification/MessageData;)Lorg/json/JSONObject;

    move-result-object v3

    :try_start_1
    const-string v4, "action"

    .line 144
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v4, "error adding string to jsonObject"

    .line 146
    invoke-static {v0, v4, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    :goto_1
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 150
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static storeNotificationMessageForLater(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "nf_push_job"

    const-string v1, "notification_messages_to_log"

    const/4 v2, 0x0

    .line 155
    invoke-static {p0, v1, v2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 157
    :try_start_0
    invoke-static {v3}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    goto :goto_0

    :cond_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "error retrieving saved Notification messages"

    .line 159
    invoke-static {v0, v4, v3}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-nez v2, :cond_1

    .line 163
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    :cond_1
    const/4 v3, 0x1

    .line 166
    invoke-virtual {p1, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p1

    .line 167
    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-array p1, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 169
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, v3

    const-string v3, "Updating pending message preference %s"

    invoke-static {v0, v3, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 171
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onNetflixStartJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 2

    const-string p1, "nf_push_job"

    const-string v0, "push job started"

    .line 44
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationJobExecutor;->handlePendingPushNotificationActions()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationJobExecutor;->handlePendingPushNotificationMessages()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationJobExecutor;->mNetflixJobScheduler:Lo/iy;

    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->g:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lo/iy;->d(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Z)V

    :cond_0
    return-void
.end method

.method public onNetflixStopJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 1

    const-string p1, "nf_push_job"

    const-string v0, "install token job stopped"

    .line 125
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
