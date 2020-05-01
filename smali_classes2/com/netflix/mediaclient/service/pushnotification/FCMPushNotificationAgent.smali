.class public Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent;
.super Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent$CloudPushSupport;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_push"


# instance fields
.field private mCloudPushSupport:Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent$CloudPushSupport;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/user/UserAgent;)V

    .line 27
    sget-object p1, Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent$CloudPushSupport;->UNKNOWN:Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent$CloudPushSupport;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent;->mCloudPushSupport:Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent$CloudPushSupport;

    return-void
.end method

.method public static synthetic a(Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent;Lcom/google/firebase/iid/InstanceIdResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent;->lambda$doFcmRegistration$0(Lcom/google/firebase/iid/InstanceIdResult;)V

    return-void
.end method

.method private doFcmRegistration()V
    .locals 2

    .line 98
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent;->isPushSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nf_push"

    const-string v1, "device does NOT support FCM!"

    .line 99
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 102
    :cond_0
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstanceId()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lo/xS;

    invoke-direct {v1, p0}, Lo/xS;-><init>(Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private synthetic lambda$doFcmRegistration$0(Lcom/google/firebase/iid/InstanceIdResult;)V
    .locals 2

    .line 103
    invoke-interface {p1}, Lcom/google/firebase/iid/InstanceIdResult;->getToken()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent;->registrationId:Ljava/lang/String;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent;->registrationId:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "nf_push"

    const-string v1, "device supports FCM token: %s"

    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method private onFcmRegistration(Ljava/lang/String;)V
    .locals 1

    .line 114
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent;->registrationId:Ljava/lang/String;

    .line 115
    iget-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iget-boolean p1, p1, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->optedIn:Z

    sget-object v0, Lcom/netflix/cl/model/AppView;->login:Lcom/netflix/cl/model/AppView;

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent;->report(ZLcom/netflix/cl/model/AppView;)V

    return-void
.end method

.method private updateCloudSupportInfo(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 90
    sget-object p1, Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent$CloudPushSupport;->SUPPORTED:Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent$CloudPushSupport;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent$CloudPushSupport;->NOT_SUPPORTED:Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent$CloudPushSupport;

    :goto_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent;->mCloudPushSupport:Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent$CloudPushSupport;

    return-void
.end method


# virtual methods
.method public agentName()Ljava/lang/String;
    .locals 1

    const-string v0, "fcmPush"

    return-object v0
.end method

.method public destroy()V
    .locals 0

    .line 52
    invoke-super {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->destroy()V

    return-void
.end method

.method public doInit()V
    .locals 1

    .line 43
    invoke-super {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->doInit()V

    .line 45
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent;->verifyFCM()V

    .line 46
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent;->doFcmRegistration()V

    .line 47
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public handleCommand(Landroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "nf_push"

    if-nez p1, :cond_0

    const-string p1, "Intent is null"

    .line 128
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 132
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.netflix.mediaclient.intent.action.PUSH_NOTIFICATION_ONREGISTERED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "Handle registration"

    .line 133
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "reg_id"

    .line 134
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent;->onFcmRegistration(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.netflix.mediaclient.intent.action.PUSH_NOTIFICATION_ONMESSAGE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "Handle message"

    .line 136
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent;->onMessage(Landroid/content/Intent;)V

    goto :goto_0

    .line 138
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.netflix.mediaclient.intent.action.NOTIFICATION_CANCELED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "Handle notification canceled"

    .line 139
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent;->onNotificationCanceled(Landroid/content/Intent;)V

    goto :goto_0

    .line 141
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.netflix.mediaclient.intent.action.NOTIFICATION_BROWSER_REDIRECT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, "Handle notification browser redirect"

    .line 142
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent;->onNotificationBrowserRedirect(Landroid/content/Intent;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_4
    const-string p1, "Unknown command!"

    .line 145
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isPushSupported()Z
    .locals 4

    .line 62
    sget-object v0, Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent$1;->$SwitchMap$com$netflix$mediaclient$service$pushnotification$FCMPushNotificationAgent$CloudPushSupport:[I

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent;->mCloudPushSupport:Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent$CloudPushSupport;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent$CloudPushSupport;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent;->verifyFCM()V

    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent;->mCloudPushSupport:Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent$CloudPushSupport;

    sget-object v2, Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent$CloudPushSupport;->SUPPORTED:Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent$CloudPushSupport;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    return v3

    :cond_2
    return v1
.end method

.method public verifyFCM()V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent;->mCloudPushSupport:Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent$CloudPushSupport;

    sget-object v1, Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent$CloudPushSupport;->UNKNOWN:Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent$CloudPushSupport;

    if-eq v0, v1, :cond_0

    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lo/adq;->k(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent;->updateCloudSupportInfo(Z)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 85
    iget-object v2, p0, Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent;->mCloudPushSupport:Lcom/netflix/mediaclient/service/pushnotification/FCMPushNotificationAgent$CloudPushSupport;

    aput-object v2, v0, v1

    const-string v1, "nf_push"

    const-string v2, "Device supports FCM: %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_1
    return-void
.end method
