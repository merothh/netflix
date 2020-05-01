.class public Lcom/netflix/mediaclient/ui/home/DataSaverNotifier;
.super Ljava/lang/Object;
.source "DataSaverNotifier.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DataSaverNotifier"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static markPersistentStateAsShown(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 47
    const-string/jumbo v0, "should_show_ftc_data_saver_notification"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 48
    return-void
.end method

.method private static shouldShowNotification(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 34
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isNetworkTypeCellular(Landroid/content/Context;)Z

    move-result v3

    .line 35
    const-string/jumbo v0, "should_show_ftc_data_saver_notification"

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    .line 36
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    move v0, v1

    .line 38
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 39
    const-string/jumbo v5, "DataSaverNotifier"

    const-string/jumbo v6, "isOnCellular: %b, shouldShowFromPrefs: %b, shouldShowNotif: %b"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 40
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v7, v1

    .line 39
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    return v0

    :cond_1
    move v0, v2

    .line 36
    goto :goto_0
.end method

.method private static showNotification(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 51
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0800d5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    const v1, 0x7f0801fd

    new-instance v2, Lcom/netflix/mediaclient/ui/home/DataSaverNotifier$AppSettingsClickListener;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/home/DataSaverNotifier$AppSettingsClickListener;-><init>(Landroid/app/Activity;)V

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 54
    return-void
.end method

.method public static showNotificationIfNecessary(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 27
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/home/DataSaverNotifier;->shouldShowNotification(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/home/DataSaverNotifier;->showNotification(Landroid/app/Activity;)V

    .line 29
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/home/DataSaverNotifier;->markPersistentStateAsShown(Landroid/content/Context;)V

    .line 31
    :cond_0
    return-void
.end method
