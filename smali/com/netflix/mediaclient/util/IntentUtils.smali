.class public final Lcom/netflix/mediaclient/util/IntentUtils;
.super Ljava/lang/Object;
.source "IntentUtils.java"


# static fields
.field public static final INTENT_CATEGORY_UI:Ljava/lang/String; = "LocalIntentNflxUi"

.field private static final TAG:Ljava/lang/String;

.field public static final USER_HIGH_PRIORITY:I = 0x3e7

.field public static final USER_LOW_PRIORITY:I = -0x3e7


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/util/IntentUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/util/IntentUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntentActionOrNull(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/util/IntentUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getIntentActionOrNull intentAction is null"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getSafePriority(I)I
    .locals 1

    const/16 v0, -0x3e8

    if-ge p0, v0, :cond_1

    const/16 p0, -0x3e7

    :cond_0
    :goto_0
    return p0

    :cond_1
    const/16 v0, 0x3e8

    if-le p0, v0, :cond_0

    const/16 p0, 0x3e7

    goto :goto_0
.end method

.method public static varargs registerSafelyBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Receiver is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p4, :cond_2

    array-length v2, p4

    if-ge v2, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No actions!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    if-eqz p2, :cond_4

    invoke-virtual {v3, p2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    :cond_4
    array-length v4, p4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_6

    aget-object v5, p4, v2

    invoke-static {v5}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    invoke-static {p3}, Lcom/netflix/mediaclient/util/IntentUtils;->getSafePriority(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    :try_start_0
    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/netflix/mediaclient/util/IntentUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed to register "

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_1
.end method

.method public static varargs registerSafelyBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1

    const/16 v0, 0x3e7

    invoke-static {p0, p1, p2, v0, p3}, Lcom/netflix/mediaclient/util/IntentUtils;->registerSafelyBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static registerSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/util/IntentUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Context is null"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    sget-object v1, Lcom/netflix/mediaclient/util/IntentUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Receiver is null"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/netflix/mediaclient/util/IntentUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed to unregister "

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static registerSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Z
    .locals 3

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Receiver is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No filter!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/netflix/mediaclient/util/IntentUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to register "

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs registerSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 5

    if-eqz p4, :cond_0

    array-length v0, p4

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No actions!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    if-eqz p2, :cond_2

    invoke-virtual {v1, p2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    :cond_2
    array-length v2, p4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_4

    aget-object v3, p4, v0

    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-static {p0, p1, v1}, Lcom/netflix/mediaclient/util/IntentUtils;->registerSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Z

    move-result v0

    return v0
.end method

.method public static varargs registerSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1

    const/16 v0, 0x3e7

    invoke-static {p0, p1, p2, v0, p3}, Lcom/netflix/mediaclient/util/IntentUtils;->registerSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static unregisterSafelyBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/util/IntentUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Context is null"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    sget-object v1, Lcom/netflix/mediaclient/util/IntentUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Receiver is null"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/netflix/mediaclient/util/IntentUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed to unregister "

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static unregisterSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/util/IntentUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Context is null"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    sget-object v1, Lcom/netflix/mediaclient/util/IntentUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Receiver is null"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/netflix/mediaclient/util/IntentUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed to unregister "

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
