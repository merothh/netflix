.class public final Lcom/netflix/mediaclient/service/pushnotification/NotificationFactory;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DATA:Ljava/lang/String; = "data"

.field private static final TAG:Ljava/lang/String; = "nf_push_notificationFactory"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNotification(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;Lo/ErrorCodes;ILcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 6

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    .line 71
    new-instance v2, Lcom/netflix/cl/model/event/discrete/PushNotificationReceived;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationTrackingInfo;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationTrackingInfo;-><init>(Lcom/netflix/mediaclient/service/pushnotification/Payload;)V

    invoke-direct {v2, v0, v1}, Lcom/netflix/cl/model/event/discrete/PushNotificationReceived;-><init>(Ljava/lang/Long;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 72
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v0, v2}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V

    .line 75
    invoke-interface {p4}, Lcom/netflix/mediaclient/service/user/UserAgent;->b()Lo/BC;

    move-result-object v0

    .line 85
    invoke-interface {p4}, Lcom/netflix/mediaclient/service/user/UserAgent;->d()Z

    move-result v1

    .line 86
    invoke-interface {p4}, Lcom/netflix/mediaclient/service/user/UserAgent;->d()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-interface {p4}, Lcom/netflix/mediaclient/service/user/UserAgent;->e()Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 87
    :goto_0
    iget-object v2, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->profileGuid:Ljava/lang/String;

    invoke-static {v2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v2

    const-string v5, "nf_push_notificationFactory"

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-nez p4, :cond_1

    if-eqz v0, :cond_1

    .line 90
    invoke-interface {v0}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object p4

    .line 91
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->profileGuid:Ljava/lang/String;

    invoke-static {p4, v0}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    aput-object p4, p0, v4

    .line 92
    iget-object p1, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->profileGuid:Ljava/lang/String;

    aput-object p1, p0, v3

    const-string p1, "drop push event - currentProfile :%s != profileGuid:%s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p4, "processing message "

    .line 96
    invoke-static {v5, p4}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->b()Z

    move-result p4

    if-eqz p4, :cond_3

    const-string p0, "App is active - don\'t send a notification to Android status bar"

    .line 100
    invoke-static {v5, p0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 102
    :cond_3
    const-class p4, Lo/Cq;

    invoke-static {p4}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lo/Cq;

    invoke-interface {p4, p0, p1, p2, p3}, Lo/Cq;->a(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;Lo/ErrorCodes;I)V

    :goto_1
    return-void
.end method

.method public static handleSocialAction(Lo/hW;Lo/BC;Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/content/Intent;)Z
    .locals 1

    .line 117
    iget-object p2, p2, Lcom/netflix/mediaclient/service/pushnotification/Payload;->defaultActionKey:Ljava/lang/String;

    const-string v0, "SOCIAL"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    return p2

    .line 130
    :cond_0
    invoke-static {p3}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->createInstance(Landroid/content/Intent;)Lcom/netflix/mediaclient/service/pushnotification/MessageData;

    move-result-object p1

    .line 135
    invoke-interface {p0, p2, p2, v0, p1}, Lo/hW;->b(ZZZLcom/netflix/mediaclient/service/pushnotification/MessageData;)V

    return p2

    :cond_1
    return v0
.end method

.method public static isValid(Lcom/netflix/mediaclient/service/pushnotification/Payload;)Z
    .locals 0

    .line 49
    invoke-static {p0}, Lcom/netflix/mediaclient/service/pushnotification/Payload;->isValid(Lcom/netflix/mediaclient/service/pushnotification/Payload;)Ljava/lang/String;

    move-result-object p0

    .line 50
    invoke-static {p0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
