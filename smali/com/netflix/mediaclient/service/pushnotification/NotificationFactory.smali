.class public final Lcom/netflix/mediaclient/service/pushnotification/NotificationFactory;
.super Ljava/lang/Object;
.source "NotificationFactory.java"


# static fields
.field public static final DATA:Ljava/lang/String; = "data"

.field private static final TAG:Ljava/lang/String; = "nf_push_notificationFactory"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDummyGcmInfoIntent(Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;)Landroid/content/Intent;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "profileId"

    const-string/jumbo v2, "W6HQ56YURRBVHKDXMUT6FBHWRY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "type"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "when"

    const-string/jumbo v2, "1408065095164"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "defaultActionKey"

    const-string/jumbo v2, "INFO"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "nf_push_notificationFactory"

    const-string/jumbo v2, "Built gcmInfoEvent for type:%s, intent: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static createDummyNotification(Lcom/netflix/mediaclient/service/NetflixService;)V
    .locals 0

    return-void
.end method

.method public static createNotification(Lcom/netflix/mediaclient/service/NetflixService;Landroid/content/Intent;Lcom/netflix/mediaclient/util/gfx/ImageLoader;I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_1

    const-string/jumbo v0, "nf_push_notificationFactory"

    const-string/jumbo v1, "NotificationFactory.createNotification:: Intent is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p0, :cond_2

    const-string/jumbo v0, "nf_push_notificationFactory"

    const-string/jumbo v1, "NotificationFactory.createNotification:: service is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/netflix/mediaclient/service/pushnotification/Payload;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/service/pushnotification/Payload;-><init>(Landroid/content/Intent;)V

    invoke-static {v1}, Lcom/netflix/mediaclient/service/pushnotification/NotificationFactory;->isValid(Lcom/netflix/mediaclient/service/pushnotification/Payload;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->profileGuid:Ljava/lang/String;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->profileGuid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v0, "nf_push_notificationFactory"

    const-string/jumbo v3, "drop push event - currentProfile :%s != profileGuid:%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    iget-object v1, v1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->profileGuid:Ljava/lang/String;

    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "nf_push_notificationFactory"

    const-string/jumbo v3, "processing gcm message, payload has no profileId or currentProfile is null "

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string/jumbo v2, "INFO"

    iget-object v3, v1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->defaultActionKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "nf_push_notificationFactory"

    const-string/jumbo v2, "currentProfile null dropping gcm event payload:%s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->getInstance()Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;

    move-result-object v0

    invoke-virtual {v0, p0, v1, p1}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->handleEvent(Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    invoke-static {p0, v1, p1}, Lcom/netflix/mediaclient/service/pushnotification/NotificationFactory;->handleSocialAction(Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->isActivityVisible()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v0, "nf_push_notificationFactory"

    const-string/jumbo v1, "App is active - don\'t send a notification to Android status bar"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_8

    invoke-static {v0, v1, p2, p3}, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean;->createNotification(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;Lcom/netflix/mediaclient/util/gfx/ImageLoader;I)V

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0xb

    if-lt v2, v3, :cond_9

    invoke-static {v0, v1, p2, p3}, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderHoneycomb;->createNotification(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;Lcom/netflix/mediaclient/util/gfx/ImageLoader;I)V

    goto/16 :goto_0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Invalid api level"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static handleSocialAction(Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/content/Intent;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string/jumbo v2, "SOCIAL"

    iget-object v3, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->defaultActionKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "nf_push_notificationFactory"

    const-string/jumbo v3, "currentProfile null dropping social event payload:%s"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "nf_push_notificationFactory"

    const-string/jumbo v3, "rcvd visible push social notification: payload: %s"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {p2}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->createInstance(Landroid/content/Intent;)Lcom/netflix/mediaclient/service/pushnotification/MessageData;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "nf_push_notificationFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refreshIrisNotifications with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v2

    invoke-interface {v2, v0, v0, v1}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->refreshIrisNotifications(ZZLcom/netflix/mediaclient/service/pushnotification/MessageData;)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private static isValid(Lcom/netflix/mediaclient/service/pushnotification/Payload;)Z
    .locals 4

    invoke-static {p0}, Lcom/netflix/mediaclient/service/pushnotification/Payload;->isValid(Lcom/netflix/mediaclient/service/pushnotification/Payload;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_push_notificationFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NotificationFactory.createNotification:: Not correct payload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
