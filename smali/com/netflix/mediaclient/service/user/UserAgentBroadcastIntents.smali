.class public final Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents;
.super Ljava/lang/Object;
.source "UserAgentBroadcastIntents.java"


# static fields
.field public static final EXTRA_TOKEN:Ljava/lang/String; = "token"

.field public static final EXTRA_USER_PROFILE_SELECTION_RESULT_INT:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.EXTRA_USER_PROFILE_SELECTION_RESULT_INT"

.field public static final EXTRA_USER_PROFILE_SELECTION_RESULT_STRING:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.EXTRA_USER_PROFILE_SELECTION_RESULT_STRING"

.field public static final NOTIFY_ACCOUNT_DATA_FETCHED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.ACCOUNT_DATA_FETCHED"

.field public static final NOTIFY_AUTOLOGIN_TOKEN_CREATED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.NOTIFY_AUTOLOGIN_TOKEN_CREATED"

.field public static final NOTIFY_CURRENT_PROFILE_INVALID:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.NOTIFY_CURRENT_PROFILE_INVALID"

.field public static final NOTIFY_PROFILES_LIST_UPDATED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.NOTIFY_PROFILES_LIST_UPDATED"

.field public static final NOTIFY_USER_ACCOUNT_ACTIVE:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.NOTIFY_USER_ACCOUNT_ACTIVE"

.field public static final NOTIFY_USER_ACCOUNT_DEACTIVE:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.NOTIFY_USER_ACCOUNT_DEACTIVE"

.field public static final NOTIFY_USER_PROFILE_ACTIVE:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_ACTIVE"

.field public static final NOTIFY_USER_PROFILE_DEACTIVE:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_DEACTIVE"

.field public static final NOTIFY_USER_PROFILE_READY_TO_SELECT:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_READY_TO_SELECT"

.field public static final NOTIFY_USER_PROFILE_SELECTION_RESULT:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_SELECTION_RESULT"

.field private static final notifSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents;->notifSet:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNotificationIntentFilter()Landroid/content/IntentFilter;
    .locals 3

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents;->notifSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static signalAccountDataFetched(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.ACCOUNT_DATA_FETCHED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method static signalAutoLoginTokenCreated(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NOTIFY_AUTOLOGIN_TOKEN_CREATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "token"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method static signalProfileActive(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_ACTIVE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method static signalProfileDeactivated(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_DEACTIVE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method static signalProfileInvalid(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.NOTIFY_CURRENT_PROFILE_INVALID"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method static signalProfileReady2Select(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_READY_TO_SELECT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method static signalProfileSelectionResult(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_SELECTION_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.EXTRA_USER_PROFILE_SELECTION_RESULT_INT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.EXTRA_USER_PROFILE_SELECTION_RESULT_STRING"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method static signalProfilesListUpdated(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.NOTIFY_PROFILES_LIST_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method static signalUserAccountActive(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.NOTIFY_USER_ACCOUNT_ACTIVE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method static signalUserAccountDeactivated(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.NOTIFY_USER_ACCOUNT_DEACTIVE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method
